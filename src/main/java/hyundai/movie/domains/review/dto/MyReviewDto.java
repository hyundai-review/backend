package hyundai.movie.domains.review.dto;

import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;

@Getter
public class MyReviewDto {
    private final Long reviewId;
    private final Integer rating;
    private final String content;
    private final String photocard;
    private final Boolean isSpoil;
     private Integer totalComments;
     private final Boolean isLike;
    private final String createdAt;
    private final String updatedAt;

    private MyReviewDto(Long reviewId, Integer rating, String content, String photocard,Boolean isSpoil, Integer totalComments, boolean isLike, String createdAt, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.photocard = photocard;
        this.isSpoil = isSpoil;
        this.totalComments = totalComments;
        this.isLike = isLike;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public static MyReviewDto from(Review review, int totalComments, boolean isLike) {

        return new MyReviewDto(
                review.getId(),
                review.getRating(),
                review.getContent(),
                review.getPhotocard(),
                review.getIsSpoil(),
                totalComments,
                isLike,
                review.getCreatedAt().toString(),
                review.getUpdatedAt().toString()
        );
    }


}
