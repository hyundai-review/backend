package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;
import org.springframework.data.domain.Slice;

import java.util.List;

@Getter
public class ReviewListResponse {
    private final MyReviewResponse myReview;
    private final List<ReviewResponse> otherReviewList;
    private final SliceInfo pageable;

    public ReviewListResponse( MyReviewResponse myReview, List<ReviewResponse> otherReviewList, Slice<Review> reviewSlice, int totalPages) {
        this.myReview = myReview;
        this.otherReviewList = otherReviewList;
        this.pageable = new SliceInfo(reviewSlice, totalPages);
    }
}
