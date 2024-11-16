package hyundai.movie.domains.movie.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.VectorValueDto;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieRecommendation;
import hyundai.movie.domains.movie.dto.MovieScoreDto;
import hyundai.movie.domains.movie.repository.MovieRecommendationRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieRecommendationService {
    private final MovieRecommendationRepository movieRecommendationRepository;
    private final MovieRepository movieRepository;
    private final ObjectMapper objectMapper;

    private static final int RECOMMENDATION_COOLDOWN = 30;
    private static final int MAX_CANDIDATES = 500;
    private static final int TOP_GENRES = 8;

    @Async
    public void calculateRecommendation(Member member) {
        // 1. 마지막 계산 시간 체크
        MovieRecommendation recommendation = movieRecommendationRepository.findByMember(member)
                .orElse(new MovieRecommendation(member, "[]", LocalDateTime.now().minusHours(1)));

        if (!shouldCalculateRecommendations(recommendation.getLastCalculated())) return;

        try {
            // 2. 장르 기반 1차 필터링
            Set<Movie> candidateMovies = filterMoviesByGenre(member);
            Set<String> includedGenreIds = getFilteredGenreIds(member);

            // 3. 각 영화별 유사도 점수 계산
            List<MovieScoreDto> movieScores = calculateSimilarityScores(member, candidateMovies);

            // 4. 인기 영화 (다른 장르) 가져오기
            List<MovieScoreDto> popularMovies = getPopularMoviesFromOtherGenres(includedGenreIds);

            // 5. 두 리스트 조합 (7:3)
            List<Long> finalRecommendations = combineRecommendations(movieScores, popularMovies);

            // 6. 결과 저장
            recommendation.updateRecommendation(objectMapper.writeValueAsString(finalRecommendations));
            movieRecommendationRepository.save(recommendation);

        } catch (Exception e) {
            log.error("추천 계산 중 에러 발생", e);
        }
    }

    private boolean shouldCalculateRecommendations(LocalDateTime lastCalculated) {
        return lastCalculated.plusSeconds(RECOMMENDATION_COOLDOWN).isBefore(LocalDateTime.now());
    }

    private Set<String> getFilteredGenreIds(Member member) {
        try {
            Map<String, VectorValueDto> genreVector = objectMapper.readValue(
                    member.getGenreVector(),
                    new TypeReference<>() {}
            );

            final int TOP_GENRES = 8;
            return genreVector.entrySet().stream()
                    .sorted(Map.Entry.<String, VectorValueDto>comparingByValue(
                            Comparator.comparingDouble(VectorValueDto::getScore)).reversed()
                    )
                    .limit(TOP_GENRES)
                    .map(Map.Entry::getKey)
                    .collect(Collectors.toSet());
        } catch (JsonProcessingException e) {
            log.error("장르 벡터 파싱 실패", e);
            return Collections.emptySet();
        }
    }

    private Set<Movie> filterMoviesByGenre(Member member) {
        try {
            // 1. 유저의 장르 벡터 읽기
            Map<String, VectorValueDto> genreVector = objectMapper.readValue(
                    member.getGenreVector(),
                    new TypeReference<>() {}
            );

            // 2. 선호 장르 추출 (상위 8개)

            Set<String> preferredGenres = genreVector.entrySet().stream()
                    .sorted(Map.Entry.<String, VectorValueDto>comparingByValue(
                            Comparator.comparingDouble(VectorValueDto::getScore)).reversed()
                    )
                    .limit(TOP_GENRES)
                    .map(Map.Entry::getKey)
                    .collect(Collectors.toSet());

            // 3. 해당 장르들이 포함된 영화 조회
            return movieRepository.findMoviesByGenreIds(preferredGenres)
                    .stream()
                    .limit(MAX_CANDIDATES)
                    .collect(Collectors.toSet());

        } catch (JsonProcessingException e) {
            log.error("장르 벡터 파싱 실패", e);
            return Collections.emptySet();
        }
    }

    private List<MovieScoreDto> calculateSimilarityScores(Member member, Set<Movie> candidateMovies) {
        try {
            // 1. 유저의 선호도 벡터들 가져오기
            Map<String, VectorValueDto> genreVector = objectMapper.readValue(
                    member.getGenreVector(),
                    new TypeReference<>() {}
            );
            Map<String, VectorValueDto> actorVector = objectMapper.readValue(
                    member.getActorVector(),
                    new TypeReference<>() {}
            );
            Map<String, VectorValueDto> directorVector = objectMapper.readValue(
                    member.getDirectorVector(),
                    new TypeReference<>() {}
            );

            // 2. 각 영화별로 유사도 점수 계산
            return candidateMovies.stream()
                    .map(movie -> {
                        double genreScore = calculateGenreSimilarity(movie, genreVector);
                        double actorScore = calculateActorSimilarity(movie, actorVector);
                        double directorScore = calculateDirectorSimilarity(movie, directorVector);

                        // 가중치 적용한 최종 점수 (장르 70%, 배우 20%, 감독 10%)
                        double finalScore = (genreScore * 0.7) +
                                (actorScore * 0.2) +
                                (directorScore * 0.1);

                        return MovieScoreDto.createFromSimilarity(movie.getId(), finalScore);
                    })
                    .collect(Collectors.toList());

        } catch (JsonProcessingException e) {
            log.error("벡터 파싱 실패", e);
            return Collections.emptyList();
        }
    }

    private double calculateGenreSimilarity(Movie movie, Map<String, VectorValueDto> userGenreVector) {
        if (userGenreVector.isEmpty()) {
            return 0.0;
        }

        // 1. 영화의 장르 ID Set
        Set<String> movieGenreIds = movie.getMovieGenres().stream()
                .map(mg -> mg.getId().toString())
                .collect(Collectors.toSet());

        if (movieGenreIds.isEmpty()) {
            return 0.0;
        }

        // 2. userGenreVector의 평균 선호도 계산
        double userMean = userGenreVector.values().stream()
                .mapToDouble(VectorValueDto::getScore)
                .average()
                .orElse(0.0);

        // 3. 영화 장르의 평균 (있으면 1, 없으면 0)
        double movieMean = (double) movieGenreIds.size() / 19;

        // 4. 피어슨 상관계수 계산
        double numerator = 0.0;
        double memberDenominator = 0.0;
        double movieDenominator = 0.0;

        // 전체 장르 ID에 대해 계산
        for (String genreId : userGenreVector.keySet()) {
            // 사용자의 해당 장르 선호도 - 평균
            double userScore = userGenreVector.get(genreId).getScore() - userMean;
            // 영화의 해당 장르 포함 여부(1 or 0) - 평균
            double movieScore = (movieGenreIds.contains(genreId) ? 1.0 : 0.0) - movieMean;

            numerator += userScore * movieScore;
            memberDenominator += userScore * userScore;
            movieDenominator += movieScore * movieScore;
        }

        if (memberDenominator == 0.0 || movieDenominator == 0.0) {
            return 0.0;
        }

        // 5. -1 ~ 1 범위를 0 ~ 1 범위로 정규화
        return (numerator / Math.sqrt(memberDenominator * movieDenominator) + 1) / 2;
    }

    private double calculateActorSimilarity(Movie movie, Map<String, VectorValueDto> userActorVector) {
        // 유저의 선호 배우가 없으면
        if (userActorVector.isEmpty()) {
            return 0.0;
        }

        // 1. 유저의 선호 배우 상위 N명 추출
        final int TOP_ACTORS = 20;  // 상위 20명만 고려
        Set<String> topActorIds = userActorVector.entrySet().stream()
                .sorted(Map.Entry.<String, VectorValueDto>comparingByValue(
                        Comparator.comparingDouble(VectorValueDto::getScore)).reversed()
                )
                .limit(TOP_ACTORS)
                .map(Map.Entry::getKey)
                .collect(Collectors.toSet());

        // 2. 영화의 배우 ID들
        Set<String> movieActorIds = movie.getMovieActors().stream()
                .map(ma -> ma.getId().toString())
                .collect(Collectors.toSet());

        // 3. 교집합 크기 계산 (겹치는 배우 수)
        long commonActors = movieActorIds.stream()
                .filter(topActorIds::contains)
                .count();

        // 4. 배우 한명당 0.2점씩
        return Math.min(commonActors * 0.2, 1.0);  // 최대 1.0
    }

    private double calculateDirectorSimilarity(Movie movie, Map<String, VectorValueDto> userDirectorVector) {
        if (userDirectorVector.isEmpty()) {
            return 0.0;
        }

        // 1. 유저의 선호 감독 상위 10명 추출
        final int TOP_DIRECTORS = 10;
        Set<String> topDirectorIds = userDirectorVector.entrySet().stream()
                .sorted(Map.Entry.<String, VectorValueDto>comparingByValue(
                        Comparator.comparingDouble(VectorValueDto::getScore)).reversed()
                )
                .limit(TOP_DIRECTORS)
                .map(Map.Entry::getKey)
                .collect(Collectors.toSet());

        // 2. 영화의 감독 ID
        String movieDirectorId = movie.getMovieDirectors().get(0).getId().toString();

        // 3. 선호 감독 10명 안에 포함되면 1, 아니면 0
        return topDirectorIds.contains(movieDirectorId) ? 1.0 : 0.0;
    }

    private List<MovieScoreDto> getPopularMoviesFromOtherGenres(Set<String> includedGenreIds) {
        // 포함된 8개 장르를 제외한 다른 장르의 영화들 중에서 인기 영화 추출
        return movieRepository.findTop150ByMovieGenresIdNotIn(includedGenreIds)
                .stream()
                .map(movie -> MovieScoreDto.createFromPopularity(
                        movie.getId(),
                        calculatePopularityScore(movie)
                ))
                .collect(Collectors.toList());
    }

    private double calculatePopularityScore(Movie movie) {
        return movie.getVoteAvg() / 10.0;
    }

    private List<Long> combineRecommendations(
            List<MovieScoreDto> similarityBasedScores,
            List<MovieScoreDto> popularityBasedScores) {

        // 유저 벡터가 비어있는 경우 (초기 사용자)
        if (similarityBasedScores.isEmpty()) {
            return popularityBasedScores.stream()
                    .sorted(Comparator.comparingDouble(MovieScoreDto::getFinalScore).reversed())
                    .limit((long) (MAX_CANDIDATES * 0.3))
                    .map(MovieScoreDto::getMovieId)
                    .collect(Collectors.toList());
        }

        final int SIMILARITY_COUNT = (int) (MAX_CANDIDATES * 0.7);
        final int POPULARITY_COUNT = (int) (MAX_CANDIDATES * 0.3);

        // 유사도 기반 추천
        List<MovieScoreDto> topSimilarityScores = similarityBasedScores.stream()
                .sorted(Comparator.comparingDouble(MovieScoreDto::getFinalScore).reversed())
                .limit(SIMILARITY_COUNT)
                .toList();

        // 인기도 기반 추천
        List<MovieScoreDto> topPopularityScores = popularityBasedScores.stream()
                .sorted(Comparator.comparingDouble(MovieScoreDto::getFinalScore).reversed())
                .limit(POPULARITY_COUNT)
                .toList();

        // 두 리스트 합치고 최종 정렬
        List<MovieScoreDto> combined = new ArrayList<>();
        combined.addAll(topSimilarityScores);
        combined.addAll(topPopularityScores);
        combined.sort(Comparator.comparingDouble(MovieScoreDto::getFinalScore).reversed());

        return combined.stream()
                .map(MovieScoreDto::getMovieId)
                .collect(Collectors.toList());
    }

}