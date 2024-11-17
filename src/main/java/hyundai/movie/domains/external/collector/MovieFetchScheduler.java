package hyundai.movie.domains.external.collector;

import hyundai.movie.domains.external.service.MovieFetchService;
import java.util.concurrent.atomic.AtomicInteger;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class MovieFetchScheduler {

    private final MovieFetchService movieFetchService;
    private AtomicInteger currentYear = new AtomicInteger(2018); // 시작 연도

    @Scheduled(fixedRate = 20 * 60 * 1000) // 20분마다
    public void fetchMoviesByYear() {
        int year = currentYear.get();

        if (year < 2000) {  // 2000년 미만이면 스케줄러 종료
            log.info("2000년도 도달, 스케줄러 중지");
            throw new RuntimeException("Target year reached");
        }

        try {
            log.info("영화 Fetch 시작, 연도: {}", year);
            movieFetchService.fetchAllMovies(year, 1, year, 12);  // 1년치 전체
            log.info("영화 Fetch 성공, 연도: {}", year);

            currentYear.decrementAndGet();  // 연도 감소

        } catch (Exception e) {
            log.error("영화 Fetch 실패, 연도: {}: {}", year, e.getMessage());
            // 에러가 나도 다음 연도로 진행
            currentYear.decrementAndGet();
        }
    }
}
