package hyundai.movie.domains.external.api;

import hyundai.movie.domains.external.service.KobisService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/kobis")
@RequiredArgsConstructor
public class KobisController {
    private final KobisService kobisService;

    @GetMapping("/manual-fetch")
    public ResponseEntity<String> fetchBoxOfficeMovieList() {
        boolean isValid = kobisService.fetchBoxOfficeMovieList();

        if(isValid) {
            return ResponseEntity.ok("BoxOffice Data Fetched.");
        } else {
            return ResponseEntity.badRequest().body("Error!");
        }
    }
}
