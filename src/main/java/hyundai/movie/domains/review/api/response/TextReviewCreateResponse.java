package hyundai.movie.domains.review.api.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class TextReviewCreateResponse {
    private Long reviewId;
    private Integer rating;
    private String content;
    private Boolean isSpoil;
    private String createdAt;
    private String updatedAt;
}
