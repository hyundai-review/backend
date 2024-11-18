package hyundai.movie.domains.review.dto;

import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;

@Getter
public class RecentReviewDto {
    private final Long movieId;
    private final Long reviewId;
    private final Integer rating;
    private Integer totalComments;
    private final String content;
    private final String photocard;

    private RecentReviewDto(Long movieId, Long reviewId, Integer rating, Integer totalComments, String content,  String photocard) {
        this.movieId = movieId;
        this.reviewId = reviewId;
        this.rating = rating;
        this.totalComments = totalComments;
        this.content = content;
        this.photocard = photocard;
    }

    public static RecentReviewDto from (Review review, int totalComments) {
        return new RecentReviewDto(
                review.getMovie().getId(),
                review.getId(),
                review.getRating(),
                totalComments,
                review.getContent(),
                review.getPhotocard()
        );
    }
}


