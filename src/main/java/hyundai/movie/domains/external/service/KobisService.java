package hyundai.movie.domains.external.service;

import hyundai.movie.domains.external.client.KobisApiClient;
import hyundai.movie.domains.external.dto.KobisBoxOfficeDto;
import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.repository.BoxOfficeRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class KobisService {

    private final KobisApiClient kobisApiClient;
    private final BoxOfficeRepository boxOfficeRepository;
    private final MovieFetchService movieFetchService;

    @Scheduled(cron = "0 0 10 * * ?")
    @Transactional
    public void fetchDailyBoxOfficeScheduled() {
        log.info("Daily BoxOffice data collection started at: {}", LocalDate.now());
        boolean result = fetchBoxOfficeMovieList();
        if (result) {
            log.info("Daily BoxOffice data collection completed successfully");
        } else {
            log.error("Daily BoxOffice data collection failed");
        }
    }

    @Transactional
    public boolean fetchBoxOfficeMovieList() {
        try {
            LocalDate yesterday = LocalDate.now().minusDays(1);
            // kobis는 yyyymmdd 형식
            String formattedDate = yesterday.format(DateTimeFormatter.ofPattern("yyyyMMdd"));

            // DB에 이미 데이터가 있다면 요청 무시
            List<BoxOffice> boxOfficeList = boxOfficeRepository.findByDateWithMovie(formattedDate);
            if (!boxOfficeList.isEmpty()) {
                return true;
            }

            // 데이터가 없다면 kobis로부터 데이터를 가져옴
            KobisBoxOfficeDto kobisBoxOfficeDto = kobisApiClient.getDailyBoxOffice(formattedDate);

            log.info(kobisBoxOfficeDto.getBoxOfficeResult().getDailyBoxOfficeList().get(0).getMovieNm());

            // 가져온 데이터로 Movie/BoxOffice 생성
            kobisBoxOfficeDto.getBoxOfficeResult().getDailyBoxOfficeList()
                    .forEach(dailyBoxOffice -> {
                                Movie movie = movieFetchService.initializeMovieByName(
                                        dailyBoxOffice.getMovieNm().replaceAll("[^a-zA-Z가-힣0-9\\s]", ""),
                                        dailyBoxOffice.getOpenDt().substring(0, 4)
                                );

                                BoxOffice boxOffice = BoxOffice.builder()
                                        .movie(movie)
                                        .rank(Integer.parseInt(dailyBoxOffice.getRank()))
                                        .targetDate(formattedDate)
                                        .build();

                                boxOfficeRepository.save(boxOffice);
                            }
                    );

            return true;
        } catch (Exception e) {
            log.error("Fatal error during data collection: ", e);
            return false;
        }
    }

}
