package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.review.domain.Review;
import java.time.format.DateTimeFormatter;
import lombok.Getter;

@Getter
public class ReviewUpdateResponse {
    private Long reviewId;
    private Integer rating;
    private String content;
    private Boolean isSpoil;
    private String updatedAt;

    private ReviewUpdateResponse(Long reviewId, Integer rating, String content, Boolean isSpoil, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.isSpoil = isSpoil;
        this.updatedAt = updatedAt;

    }

    public static ReviewUpdateResponse from(Review updateReview) {
        return new ReviewUpdateResponse(
                updateReview.getId(),
                updateReview.getRating(),
                updateReview.getContent(),
                updateReview.getIsSpoil(),
                updateReview.getUpdatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME)

        );
    }

}



