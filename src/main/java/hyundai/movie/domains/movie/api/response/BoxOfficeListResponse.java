package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.BoxOffice;
import java.util.List;
import lombok.Getter;

@Getter
public class BoxOfficeListResponse {
    private final List<BoxOfficeResponse> movies;
    private final String targetDate;

    private BoxOfficeListResponse(List<BoxOfficeResponse> movies, String targetDate) {
        this.movies = movies;
        this.targetDate = targetDate;
    }

    public static BoxOfficeListResponse of(List<BoxOffice> boxOfficeList, String targetDate) {
        List<BoxOfficeResponse> movies = boxOfficeList.stream()
                .map(BoxOfficeResponse::from)
                .toList();

        return new BoxOfficeListResponse(movies, targetDate);
    }
}
