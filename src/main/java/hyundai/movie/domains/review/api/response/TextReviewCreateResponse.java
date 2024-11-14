package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.Review;
import lombok.Builder;
import lombok.Getter;

@Getter
public class TextReviewCreateResponse {
    private Long reviewId;
    private Integer rating;
    private String content;
    private Boolean isSpoil;
    private String createdAt;
    private String updatedAt;

    private TextReviewCreateResponse(Long reviewId, Integer rating, String content, Boolean isSpoil, String createdAt, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.isSpoil = isSpoil;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // 정적 팩토리 매서드
    public static TextReviewCreateResponse from(Review textReview) {
        return new TextReviewCreateResponse(
                textReview.getId(),
                textReview.getRating(),
                textReview.getContent(),
                textReview.getIsSpoil(),
                textReview.getCreatedAt().toString(),  // `createdAt`을 문자열로 변환
                textReview.getUpdatedAt().toString()   // `updatedAt`을 문자열로 변환
        );
    }
}
