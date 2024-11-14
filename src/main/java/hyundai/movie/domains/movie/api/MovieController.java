package hyundai.movie.domains.movie.api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/movies")
public class MovieController {

    @GetMapping("/boxoffice")
    public ResponseEntity<?> getBoxOfficeMovieList() {
        return ResponseEntity.ok().build();
    }
}
