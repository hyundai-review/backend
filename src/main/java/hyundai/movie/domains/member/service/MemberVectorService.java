package hyundai.movie.domains.member.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.VectorValueDto;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieActor;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.MovieRepository;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class MemberVectorService {

    private static final double WEIGHT_VIEW = 1.0;
    private static final double WEIGHT_REVIEW = 4.0;
    private static final double WEIGHT_PHOTO_REVIEW = 5.0;
    private static final double DECAY_RATE = 0.1;
    private static final double THRESHOLD = 0.3;
    private final MemberRepository memberRepository;
    private final MovieRepository movieRepository;
    private final ObjectMapper objectMapper;

    public void updateVectorsByMovieView(Long memberId, Long movieId) {
        Member member = memberRepository.findById(memberId)
                .orElseThrow(MemberNotFoundException::new);

        if (!canUpdateVectorForMovie(member, movieId)) {
            return;
        }

        Movie movie = movieRepository.findById(movieId).orElseThrow(MovieNotFoundException::new);

        updateGenreVector(member, movie, WEIGHT_VIEW);
        updateActorVector(member, movie, WEIGHT_VIEW);
        updateDirectorVector(member, movie, WEIGHT_VIEW);
        updateLastViewTime(member, movieId);

        memberRepository.save(member);
    }

    public void updateVectorsByReview(Long memberId, Long movieId, Boolean isPhotoReview) {
        Member member = memberRepository.findById(memberId)
                .orElseThrow(MemberNotFoundException::new);

        Movie movie = movieRepository.findById(movieId).orElseThrow(MovieNotFoundException::new);

        updateGenreVector(member, movie, isPhotoReview ? WEIGHT_PHOTO_REVIEW : WEIGHT_REVIEW);
        updateActorVector(member, movie, isPhotoReview ? WEIGHT_PHOTO_REVIEW : WEIGHT_REVIEW);
        updateDirectorVector(member, movie, isPhotoReview ? WEIGHT_PHOTO_REVIEW : WEIGHT_REVIEW);

        memberRepository.save(member);
    }

    private boolean canUpdateVectorForMovie(Member member, Long movieId) {
        try {
            Map<String, String> lastViewTimes = objectMapper.readValue(member.getLastViewTimes(),
                    new TypeReference<>() {
                    });

            String lastViewStr = lastViewTimes.get(movieId.toString());
            if (lastViewStr == null) {
                return true;
            }

            LocalDateTime lastView = LocalDateTime.parse(lastViewStr);
            return LocalDateTime.now().minusHours(24).isAfter(lastView);

        } catch (JsonProcessingException e) {
            log.error("lastViewTimes 파싱 에러 발생", e);
            return true;
        }
    }

    private void updateGenreVector(Member member, Movie movie, double weight) {
        Set<String> updatingIds = movie.getMovieGenres().stream()
                .map(mg -> mg.getGenre().getId())
                .map(String::valueOf)
                .collect(Collectors.toSet());

        updateVector(member, updatingIds, weight,
                Member::getGenreVector, Member::updateGenreVector, "장르");
    }

    private void updateActorVector(Member member, Movie movie, double weight) {
        Set<String> updatingIds = movie.getMovieActors().stream()
                .map(MovieActor::getId)
                .map(String::valueOf)
                .collect(Collectors.toSet());

        updateVector(member, updatingIds, weight,
                Member::getActorVector, Member::updateActorVector, "배우");
    }

    private void updateDirectorVector(Member member, Movie movie, double weight) {
        Set<String> updatingIds = Set.of(
                movie.getMovieDirectors().get(0).getId().toString()
        );

        updateVector(member, updatingIds, weight,
                Member::getDirectorVector, Member::updateDirectorVector, "감독");
    }

    private void updateVector(
            Member member,
            Set<String> updatingIds,
            double weight,
            Function<Member, String> getter,
            BiConsumer<Member, String> setter,
            String vectorType) {
        try {
            // 1. 현재 벡터 읽기
            Map<String, VectorValueDto> vector = objectMapper.readValue(
                    getter.apply(member),
                    new TypeReference<>() {}
            );

            // 2. 벡터 업데이트
            Map<String, VectorValueDto> updatedVector = new HashMap<>();

            // 2-1. 기존 값들 업데이트
            vector.forEach((id, value) -> {
                if (updatingIds.contains(id)) {
                    // 현재 업데이트 대상은 새 가중치 추가
                    double newScore = value.getScore() + weight;
                    updatedVector.put(id, new VectorValueDto(newScore, 0));
                } else {
                    // 나머지는 ttl 증가 및 decay 적용
                    double decayedScore = applyDecay(value);
                    if (decayedScore > THRESHOLD) {
                        updatedVector.put(id, new VectorValueDto(decayedScore, value.getTtl() + 1));
                    }
                }
            });

            // 2-2. 새로운 ID 추가
            updatingIds.forEach(id -> {
                if (!updatedVector.containsKey(id)) {
                    log.info("###### " + vectorType + "에 대해서,,, id : " + id + ", 정보 변경");
                    updatedVector.put(id, VectorValueDto.create(weight));
                }
            });

            // 3. 업데이트된 벡터 저장
            setter.accept(member, objectMapper.writeValueAsString(updatedVector));

        } catch (JsonProcessingException e) {
            log.error("{} 벡터 업데이트 실패", vectorType, e);
        }
    }

    private double applyDecay(VectorValueDto value) {
        return value.getScore() * Math.exp(-DECAY_RATE * value.getTtl());
    }

    private void updateLastViewTime(Member member, Long movieId) {
        try {
            Map<String, String> lastViewTimes = objectMapper.readValue(member.getLastViewTimes(),
                    new TypeReference<>() {
                    });

            lastViewTimes.put(movieId.toString(), LocalDateTime.now().toString());

            member.updateLastViewTimes(objectMapper.writeValueAsString(lastViewTimes));


        } catch (JsonProcessingException e) {
            log.error("lastViewTimes 업데이트 에러 발생", e);
        }
    }
}
