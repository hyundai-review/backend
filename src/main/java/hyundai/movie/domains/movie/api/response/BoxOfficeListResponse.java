package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.dto.BoxOfficeDto;
import java.util.List;
import lombok.Getter;

@Getter
public class BoxOfficeListResponse {
    private final List<BoxOfficeDto> movies;
    private final String targetDate;

    private BoxOfficeListResponse(List<BoxOfficeDto> movies, String targetDate) {
        this.movies = movies;
        this.targetDate = targetDate;
    }

    public static BoxOfficeListResponse of(List<BoxOffice> boxOfficeList, String targetDate) {
        List<BoxOfficeDto> movies = boxOfficeList.stream()
                .map(BoxOfficeDto::from)
                .toList();

        return new BoxOfficeListResponse(movies, targetDate);
    }
}
