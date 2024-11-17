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
    private final long totalReviews;
    private final double averageRating;

    public ReviewListResponse( MyReviewDto myReview, List<ReviewDto> otherReviewList, Slice<Review> reviewSlice, int totalPages,
            int totalReviews, double averageRating) {
        this.myReview = myReview;
        this.otherReviewList = otherReviewList;
        this.pageable = new SliceInfoDto(reviewSlice, totalPages);
        this.totalReviews = totalReviews;
        this.averageRating = averageRating;
    }
}
