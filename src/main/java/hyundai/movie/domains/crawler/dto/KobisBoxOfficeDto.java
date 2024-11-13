package hyundai.movie.domains.crawler.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class KobisBoxOfficeDto {
    private BoxOfficeResult boxOfficeResult;

    @Getter
    @NoArgsConstructor
    public static class BoxOfficeResult {
        private String boxofficeType;
        private String showRange;
        private List<DailyBoxOffice> dailyBoxOfficeList;
    }

    @Getter
    @NoArgsConstructor
    public static class DailyBoxOffice {
        private String rank;
        private String movieCd;
        private String movieNm;
        private String openDt;
        private String audiCnt;
        private String audiAcc;
    }
}
