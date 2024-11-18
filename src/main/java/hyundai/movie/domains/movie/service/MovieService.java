package hyundai.movie.domains.movie.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.external.service.MovieFetchService;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.api.response.BoxOfficeListResponse;
import hyundai.movie.domains.movie.api.response.MovieImageListResponse;
import hyundai.movie.domains.movie.api.response.MovieItemResponse;
import hyundai.movie.domains.movie.api.response.MovieResponse;
import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieImage;
import hyundai.movie.domains.movie.domain.MovieRecommendation;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.exception.MovieRecommendationNotFoundException;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import hyundai.movie.domains.movie.repository.MovieImageRepository;
import hyundai.movie.domains.movie.repository.MovieRecommendationRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.domain.SliceImpl;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieService {
    private final MovieRepository movieRepository;
    private final BoxOfficeRepository boxOfficeRepository;
    private final MovieImageRepository movieImageRepository;
    private final MovieRecommendationRepository movieRecommendationRepository;
    private final MemberRepository memberRepository;
    private final MovieFetchService movieFetchService;
    private final ObjectMapper objectMapper;


    @Transactional
    public MovieResponse getMovieDetail(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(MovieNotFoundException::new);

        return MovieResponse.from(movie);
    }

    @Transactional
    public Slice<MovieItemResponse> getRecommendMovieList(Long genreId, Pageable pageable) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(MemberNotFoundException::new);

        if(genreId == 0) {
            try {
                MovieRecommendation movieRecommendation = movieRecommendationRepository.findByMember(member)
                        .orElseThrow(MovieRecommendationNotFoundException::new);

                List<Long> movieIds = objectMapper.readValue(movieRecommendation.getMovieList(),
                        new TypeReference<>() {
                        });

                int totalElements = movieIds.size();

                // 페이지네이션 계산
                int start = pageable.getPageNumber() * pageable.getPageSize();
                int end = Math.min(start + pageable.getPageSize(), totalElements);

                // 현재 페이지에 해당하는 영화 ID들 추출
                List<Long> pageMovieIds = movieIds.subList(start, end);

                // 1. 벌크로 영화 조회
                Map<Long, Movie> movieMap = movieRepository.findByIdIn(pageMovieIds, memberId)
                        .stream()
                        .collect(Collectors.toMap(
                                Movie::getId,
                                movie -> movie
                        ));

                // 2. 원본 순서대로 매핑
                List<MovieItemResponse> movies = pageMovieIds.stream()
                        .filter(movieMap::containsKey)
                        .map(id -> MovieItemResponse.from(movieMap.get(id)))
                        .collect(Collectors.toList());

                return new SliceImpl<>(
                        movies,
                        PageRequest.of(pageable.getPageNumber(), pageable.getPageSize()),
                        end < totalElements
                );

            } catch (JsonProcessingException e) {
                throw new RuntimeException(e);
            } catch (MovieRecommendationNotFoundException e) {
                return movieRepository.findMoviesByVoteAvg(memberId, pageable)
                        .map(MovieItemResponse::from);
            }
        } else {
            return movieRepository.findMoviesByGenreAndVoteAvg(152 + genreId, memberId, pageable)
                    .map(MovieItemResponse::from);
        }
    }

    @Transactional
    public Slice<MovieItemResponse> searchMovies(String keyword, Pageable pageable) {
        return movieRepository.searchByTitleContaining(keyword, pageable)
                .map(MovieItemResponse::from);
    }

    @Transactional
    public Slice<MovieItemResponse> searchAndFetchMovies(String keyword, Pageable pageable) {
        if(!movieRepository.existsByTitleContaining(keyword)) {
            List<Movie> movieList = movieFetchService.fetchAllMoviesByName(keyword, "");
            log.info("Fetch 영화 수: {}", movieList.size());
        }

        return movieRepository.searchByTitleContaining(keyword, pageable)
                .map(MovieItemResponse::from);
    }

    @Transactional
    public BoxOfficeListResponse getBoxOfficeMovieList() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        String date;
        if (now.getHour() >= 9) {
            date = now.minusDays(1).format(formatter);
        } else {
            date = now.minusDays(2).format(formatter);
        }

        String requestDate = date.replace("-", "");
        List<BoxOffice> boxOfficeList = boxOfficeRepository.findByDateWithMovie(requestDate);

        return BoxOfficeListResponse.of(boxOfficeList, date);
    }

    @Transactional
    public MovieImageListResponse getMovieImageList(Long movieId) {
        if(movieImageRepository.existsByMovieIdAndInvalid(movieId)) {
            Movie movie = movieRepository.findById(movieId).orElseThrow(MovieNotFoundException::new);

            movieFetchService.fetchMovieImage(movie);
        }

        return MovieImageListResponse.of(movieImageRepository.findByMovieId(movieId));
    }
}
