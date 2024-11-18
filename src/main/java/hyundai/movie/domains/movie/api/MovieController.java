package hyundai.movie.domains.movie.api;

import hyundai.movie.domains.movie.api.response.MovieItemResponse;
import hyundai.movie.domains.movie.service.MovieService;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/movies")
@RequiredArgsConstructor
public class MovieController {

    private final MovieService movieService;

    @GetMapping("/boxoffice")
    public ResponseEntity<?> getBoxOfficeMovieList() {
        return ResponseEntity.ok(movieService.getBoxOfficeMovieList());
    }

    @GetMapping("/details/{movieId}")
    public ResponseEntity<?> getMovieDetail(@PathVariable(name = "movieId") Long movieId) {
        return ResponseEntity.ok(movieService.getMovieDetail(movieId));
    }

    @GetMapping("/search")
    public ResponseEntity<Slice<MovieItemResponse>> searchMovies(
            @Valid @NotBlank @RequestParam String keyword,
            @PageableDefault(size = 20) Pageable pageable) {
        return ResponseEntity.ok(movieService.searchMovies(keyword, pageable));
    }

    @GetMapping("/search/fetch")
    public ResponseEntity<Slice<MovieItemResponse>> searchAndFetchMovies(
            @Valid @NotBlank @RequestParam String keyword,
            @PageableDefault(size = 20) Pageable pageable) {
        return ResponseEntity.ok(movieService.searchAndFetchMovies(keyword, pageable));
    }

    @GetMapping("/images/{movieId}")
    public ResponseEntity<?> getMovieImageList(@PathVariable(name = "movieId") Long movieId) {
        return ResponseEntity.ok(movieService.getMovieImageList(movieId));
    }

    @GetMapping("/recommend")
    public ResponseEntity<?> getRecommendMovieList(
            @Valid
            @Min(value = 0, message = "장르 id는 0 이상이어야 합니다.")
            @Max(value = 19, message = "장르 id는 19 이하여야 합니다.")
            @RequestParam(name = "genre", required = false, defaultValue = "0") Long genreId,
            @PageableDefault(size = 20) Pageable pageable) {
        return ResponseEntity.ok(movieService.getRecommendMovieList(genreId, pageable));
    }
}
