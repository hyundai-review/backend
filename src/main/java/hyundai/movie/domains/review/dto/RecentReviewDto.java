package hyundai.movie.domains.review.dto;

import lombok.Getter;

@Getter
public class RecentReviewDto {
    private final Long reviewId;
    private final String photocard;

    public RecentReviewDto(Long reveiwId, String photocard) {
        this.reviewId = reveiwId;
        this.photocard = photocard;
    }
}
