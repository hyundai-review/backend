package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.dto.MyReviewDto;
import hyundai.movie.domains.review.dto.ReviewDto;
import hyundai.movie.domains.review.dto.SliceInfoDto;
import lombok.Getter;
import org.springframework.data.domain.Slice;

import java.util.List;

@Getter
public class ReviewListResponse {
    private final MyReviewDto myReview;
    private final List<ReviewDto> otherReviewList;
    private final SliceInfoDto pageable;

    public ReviewListResponse( MyReviewDto myReview, List<ReviewDto> otherReviewList, Slice<Review> reviewSlice, int totalPages,
            int totalReviews) {
        this.myReview = myReview;
        this.otherReviewList = otherReviewList;
        this.pageable = new SliceInfoDto(reviewSlice, totalPages);
    }
}
