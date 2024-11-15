package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.ReviewLike;
import lombok.Builder;
import lombok.Getter;

@Getter
public class ReviewLikeResponse {
    private final Long reviewId;
    private final Boolean isLike;

    @Builder
    private ReviewLikeResponse(Long reviewId, Boolean isLike) {
        this.reviewId = reviewId;
        this.isLike = isLike;
    }

    public static ReviewLikeResponse from(ReviewLike reviewLike) {
        return ReviewLikeResponse.builder()
                .reviewId(reviewLike.getReview().getId())
                .isLike(reviewLike.getIsLike())
                .build();
    }
}
