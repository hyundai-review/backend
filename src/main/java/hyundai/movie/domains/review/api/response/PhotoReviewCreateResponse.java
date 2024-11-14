package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.Review;
import java.time.format.DateTimeFormatter;
import lombok.Getter;

@Getter
public class PhotoReviewCreateResponse {
    private Long reviewId;
    private Integer rating;
    private String content;
    private Boolean isSpoil;
    private String photocard;
    private String createdAt;
    private String updatedAt;

    private PhotoReviewCreateResponse(Long reviewId, Integer rating, String content, Boolean isSpoil, String photocard, String createdAt, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.isSpoil = isSpoil;
        this.photocard = photocard;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // 정적 팩토리 메서드
    public static PhotoReviewCreateResponse from(Review photoReview) {
        return new PhotoReviewCreateResponse(
                photoReview.getId(),
                photoReview.getRating(),
                photoReview.getContent(),
                photoReview.getIsSpoil(),
                photoReview.getPhotocard(),
                photoReview.getCreatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME),
                photoReview.getUpdatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME)
        );
    }


}
