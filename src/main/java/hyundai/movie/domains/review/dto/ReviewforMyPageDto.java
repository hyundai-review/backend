package hyundai.movie.domains.review.dto;

import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;

@Getter
public class ReviewforMyPageDto {
    private final Long movieId;
    private final String movieTitle;
    private final Long reviewId;
    private final Integer rating;
    private final String content;
    private final Boolean isSpoil;
    private final String photocard;
    private final int totalComments;
    private final Boolean isLike;
    private final String createdAt;
    private final String updatedAt;

    private ReviewforMyPageDto(Long movieId, String movieTitle, Long reviewId, Integer rating, String content, Boolean isSpoil,
            String photocard, int totalComments, Boolean isLike, String createdAt, String updatedAt) {
        this.movieId = movieId;
        this.movieTitle = movieTitle;
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.isSpoil = isSpoil;
        this.photocard = photocard;
        this.totalComments = totalComments;
        this.isLike = isLike;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // 정팩메 ㅋㅋ
    public static ReviewforMyPageDto from(Review review, int totalComments, boolean isLike) {
        return new ReviewforMyPageDto(
                review.getMovie().getId(),
                review.getMovie().getTitle(),
                review.getId(),
                review.getRating(),
                review.getContent(),
                review.getIsSpoil(),
                review.getPhotocard(),
                totalComments,
                isLike,
                review.getCreatedAt().toString(),
                review.getUpdatedAt().toString()
        );
    }


}
