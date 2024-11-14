package hyundai.movie.domains.review.api.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class TextReviewCreateRequest {
    private Integer rating;
    private String review;
    private Boolean isSpoil;
}
