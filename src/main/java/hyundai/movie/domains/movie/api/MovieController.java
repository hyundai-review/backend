package hyundai.movie.domains.movie.api;

import hyundai.movie.domains.movie.service.MovieService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
