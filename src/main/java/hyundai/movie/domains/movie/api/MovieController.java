package hyundai.movie.domains.movie.api;

import hyundai.movie.domains.movie.api.response.MovieItemResponse;
import hyundai.movie.domains.movie.service.MovieService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
            @RequestParam String keyword,
            @PageableDefault(size = 10) Pageable pageable) {
        return ResponseEntity.ok(movieService.searchMovies(keyword, pageable));
    }
}
