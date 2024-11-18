package hyundai.movie.helper;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.review.domain.Review;
import org.springframework.test.util.ReflectionTestUtils;

public class ReviewTestHelper {

    //  기본 텍스트 리뷰 생성
    public static Review createReview(Member member, Movie movie, Integer rating, String content, Boolean isSpoil) {
        return Review.builder()
                .movie(movie)
                .member(member)
                .rating(rating)
                .content(content)
                .isSpoil(isSpoil)
                .build();
    }

    // ID가 포함된 Review 생성
    public static Review createReviewWithId(Long id, Member member, Movie movie, Integer rating, String content, Boolean isSpoil) {
        Review review = createReview(member, movie, rating, content, isSpoil);
        ReflectionTestUtils.setField(review, "id", id);
        return review;
    }



}
