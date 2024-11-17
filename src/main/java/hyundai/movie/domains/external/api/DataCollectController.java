package hyundai.movie.domains.external.api;

import hyundai.movie.domains.external.service.MovieFetchService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping(("/data-collect"))
@RequiredArgsConstructor
public class DataCollectController {
    private final MovieFetchService movieFetchService;

    @GetMapping("/fetch-test")
    public ResponseEntity<String> fetchMoviesTest(
            @RequestParam Integer startY,
            @RequestParam Integer startM,
            @RequestParam Integer endY,
            @RequestParam Integer endM
    ) {
        try {
            movieFetchService.fetchAllMovies(startY, startM, endY, endM);
            return ResponseEntity.ok("영화 데이터 수집 성공!");

        } catch (Exception e) {
            log.error("영화 데이터 수집 중 에러 발생: ", e);
            return ResponseEntity.internalServerError()
                    .body("영화 데이터 수집 중 에러 발생: " + e.getMessage());
        }
    }
}
