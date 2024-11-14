package hyundai.movie.domains.external.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class KobisDailyBoxOfficeDto {
    private String rank;
    private String movieCd;
    private String movieNm;
    private String openDt;
    private String audiCnt;
    private String audiAcc;
}

