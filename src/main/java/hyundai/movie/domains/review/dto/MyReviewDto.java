package hyundai.movie.domains.review.dto;

import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;

@Getter
public class MyReviewDto {
    private final Long reviewId;
    private final Integer rating;
    private final String content;
    private final String photocard;
    // private Integer totalComments;
    private final String createdAt;
    private final String updatedAt;

    private MyReviewDto(Long reviewId, Integer rating, String content, String photocard, String createdAt, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.photocard = photocard;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public static MyReviewDto from(Review review) {

        return new MyReviewDto(
                review.getId(),
                review.getRating(),
                review.getContent(),
                review.getPhotocard(),
                review.getCreatedAt().toString(),
                review.getUpdatedAt().toString()
        );
    }


}
