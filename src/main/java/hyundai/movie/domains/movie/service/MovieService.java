package hyundai.movie.domains.movie.service;

import hyundai.movie.domains.external.service.MovieFetchService;
import hyundai.movie.domains.movie.api.response.BoxOfficeListResponse;
import hyundai.movie.domains.movie.api.response.MovieImageListResponse;
import hyundai.movie.domains.movie.api.response.MovieItemResponse;
import hyundai.movie.domains.movie.api.response.MovieResponse;
import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieImage;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import hyundai.movie.domains.movie.repository.MovieImageRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
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
    private final MovieFetchService movieFetchService;


    @Transactional
    public MovieResponse getMovieDetail(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(MovieNotFoundException::new);

        return MovieResponse.from(movie);
    }

    @Transactional
    public Slice<MovieItemResponse> getRecommendMovieList(Long genreId, Pageable pageable) {
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//        Long memberId = (Long) authentication.getPrincipal();

        // DB에 있는거 끌어오기 + TMDB에서 일부 가져오기... -> 이거 어짜피 추천 알고리즘 구현 때 recommendMovie 테이블 생김
        // 그 때 가져와도 됨

        if(genreId == 0) {
            return movieRepository.findRandomMovies(pageable)
                    .map(MovieItemResponse::from);
        } else {
            return movieRepository.findRandomMoviesByGenre(genreId, pageable)
                    .map(MovieItemResponse::from);
        }
    }

    @Transactional
    public Slice<MovieItemResponse> searchMovies(String keyword, Boolean fetch, Pageable pageable) {

        if(fetch) {
            List<Movie> movieList = movieFetchService.fetchAllMoviesByName(keyword, "");
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
