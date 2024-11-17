package hyundai.movie.domains.review.dto;

import lombok.Getter;

@Getter
public class RecentReviewDto {
    private final Long reveiwId;
    private final String photocard;

    public RecentReviewDto(Long reveiwId, String photocard) {
        this.reveiwId = reveiwId;
        this.photocard = photocard;
    }
}
