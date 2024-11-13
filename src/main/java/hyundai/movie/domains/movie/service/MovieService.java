package hyundai.movie.domains.movie.service;

import hyundai.movie.domains.movie.api.response.BoxOfficeListResponse;
import hyundai.movie.domains.movie.api.response.MovieResponse;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import hyundai.movie.domains.movie.repository.GenreRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
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
        // 1. BoxOffice Entity를 뒤져, 오늘 날짜 박스오피스가 있는지 확인

        // 2. 만약 있다면, 해당 정보를 리턴

        // 3. 만약 없다면, KobisApiClient를 사용해 박스오피스 순위를 찾음

        // 4. 해당 정보를 바탕으로 Tmdb를 검색하고, DB를 채움(save)

        // 5. BoxOffice 역시 데이터를 채우고,

        // 6. 데이터를 리턴한다.
    }
}
