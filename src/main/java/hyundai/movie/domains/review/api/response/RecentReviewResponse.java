package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.dto.RecentReviewDto;
import java.util.List;
import lombok.Getter;

@Getter
public class RecentReviewResponse {
    private final List<RecentReviewDto> contents;

    public RecentReviewResponse(List<RecentReviewDto> contents) {
        this.contents = contents;
    }

}
