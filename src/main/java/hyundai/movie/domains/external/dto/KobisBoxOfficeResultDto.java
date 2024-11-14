package hyundai.movie.domains.external.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class KobisBoxOfficeResultDto {
    private String boxofficeType;
    private String showRange;
    private List<KobisDailyBoxOfficeDto> dailyBoxOfficeList;
}

