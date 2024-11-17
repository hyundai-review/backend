package hyundai.movie.domains.external.api;

import hyundai.movie.domains.external.service.MovieFetchService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping(("/data-collect"))
@RequiredArgsConstructor
public class DataCollectController {
    private final MovieFetchService movieFetchService;

    @GetMapping("/fetch-test")
    public ResponseEntity<String> fetchMoviesTest() {
        try {
            // 일단 한 달치만 테스트
            movieFetchService.fetchAllMovies(2000, 1, 2024, 11);
            return ResponseEntity.ok("영화 데이터 수집 성공!");

        } catch (Exception e) {
            log.error("영화 데이터 수집 중 에러 발생: ", e);
            return ResponseEntity.internalServerError()
                    .body("영화 데이터 수집 중 에러 발생: " + e.getMessage());
        }
    }
}
