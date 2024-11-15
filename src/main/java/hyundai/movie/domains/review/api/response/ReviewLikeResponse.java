package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.ReviewLike;
import lombok.Builder;
import lombok.Getter;

@Getter
public class ReviewLikeResponse {
    private final Long id;
    private final Long reviewId;
    private final Boolean isLike;

    @Builder
    private ReviewLikeResponse(Long id, Long reviewId, Boolean isLike) {
        this.id = id;
        this.reviewId = reviewId;
        this.isLike = isLike;
    }

    public static ReviewLikeResponse from(ReviewLike reviewLike) {
        return ReviewLikeResponse.builder()
                .id(reviewLike.getId())
                .reviewId(reviewLike.getReview().getId())
                .isLike(reviewLike.getIsLike())
                .build();
    }
}
