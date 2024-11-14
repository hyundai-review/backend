package hyundai.movie.domains.movie.service;

import hyundai.movie.domains.movie.api.response.BoxOfficeListResponse;
import hyundai.movie.domains.movie.api.response.MovieResponse;
import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import hyundai.movie.domains.movie.repository.GenreRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class MovieService {
    private final MovieRepository movieRepository;
    private final BoxOfficeRepository boxOfficeRepository;
    private final GenreRepository genreRepository;


    @Transactional
    public MovieResponse getMovie(Long id) {
        Movie movie = movieRepository.findById(id)
                .orElseThrow(MovieNotFoundException::new);
        return new MovieResponse(movie);
    }

    @Transactional
    public List<MovieResponse> getMovies() {
        return movieRepository.findAll().stream()
                .map(MovieResponse::new)
                .collect(Collectors.toList());
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
