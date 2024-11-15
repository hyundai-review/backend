package hyundai.movie.domains.movie.service;

import hyundai.movie.domains.external.service.MovieFetchService;
import hyundai.movie.domains.movie.api.response.BoxOfficeListResponse;
import hyundai.movie.domains.movie.api.response.MovieItemResponse;
import hyundai.movie.domains.movie.api.response.MovieResponse;
import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieService {
    private final MovieRepository movieRepository;
    private final BoxOfficeRepository boxOfficeRepository;
    private final MovieFetchService movieFetchService;


    @Transactional
    public MovieResponse getMovieDetail(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(MovieNotFoundException::new);

        return MovieResponse.from(movie);
    }

//    @Transactional
//    public List<MovieResponse> getMovies() {
//        return movieRepository.findAll().stream()
//                .map(MovieResponse::new)
//                .collect(Collectors.toList());
//    }

    @Transactional
    public Slice<MovieItemResponse> searchMovies(String keyword, Boolean fetch, Pageable pageable) {

        if(fetch) {
            List<Movie> movieList = movieFetchService.fetchAllMoviesByName(keyword, "");
            log.info("######## 영화 수 : " + movieList.size());
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
}
