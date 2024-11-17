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
    private final String createdAt;
    private final String updatedAt;

    private ReviewforMyPageDto(Long movieId, String movieTitle, Long reviewId, Integer rating, String content, Boolean isSpoil,
            String photocard, int totalComments, String createdAt, String updatedAt) {
        this.movieId = movieId;
        this.movieTitle = movieTitle;
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.isSpoil = isSpoil;
        this.photocard = photocard;
        this.totalComments = totalComments;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // 정팩메 ㅋㅋ
    public static ReviewforMyPageDto from(Review review, int totalComments) {
        return new ReviewforMyPageDto(
                review.getMovie().getId(),
                review.getMovie().getTitle(),
                review.getId(),
                review.getRating(),
                review.getContent(),
                review.getIsSpoil(),
                review.getPhotocard(),
                totalComments,
                review.getCreatedAt().toString(),
                review.getUpdatedAt().toString()
        );
    }


}
