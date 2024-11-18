package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.dto.ReviewforMyPageDto;
import hyundai.movie.domains.review.dto.SliceInfoDto;
import java.util.List;
import lombok.Getter;
import org.springframework.data.domain.Slice;

@Getter
public class MyReviewListResponse {
    private final List<ReviewforMyPageDto> contents;
    private final SliceInfoDto pageable;
    private final int totalReviews;

    public MyReviewListResponse(Slice<ReviewforMyPageDto> reviewSlice, int totalPages, int totalReviews) {
        this.contents = reviewSlice.getContent();
        this.pageable = new SliceInfoDto(reviewSlice, totalPages);
        this.totalReviews = totalReviews;
    }

}
