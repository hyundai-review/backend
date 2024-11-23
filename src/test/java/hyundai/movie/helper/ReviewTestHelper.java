package hyundai.movie.helper;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.review.api.request.PhotoReviewCreateRequest;
import hyundai.movie.domains.review.api.request.ReviewUpdateRequest;
import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.domain.ReviewLike;
import java.time.LocalDateTime;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.util.ReflectionTestUtils;

public class ReviewTestHelper {

    // 기본 텍스트 리뷰 생성
    public static Review createReview(Member member, Movie movie, Integer rating, String content, Boolean isSpoil) {
        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(rating)
                .content(content)
                .isSpoil(isSpoil)
                .build();

        ReflectionTestUtils.setField(review, "createdAt", LocalDateTime.now());
        ReflectionTestUtils.setField(review, "updatedAt", LocalDateTime.now());

        return review;
    }

    // ID가 포함된 Review 생성
    public static Review createReviewWithId(Long id, Member member, Movie movie, Integer rating, String content, Boolean isSpoil) {
        Review review = createReview(member, movie, rating, content, isSpoil);
        ReflectionTestUtils.setField(review, "id", id);
        return review;
    }

    // 포토카드가 포함된 Review 생성
    public static Review createPhotoReview(Member member, Movie movie, Integer rating, String content, Boolean isSpoil, String photocard) {
        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(rating)
                .content(content)
                .isSpoil(isSpoil)
                .photocard(photocard)
                .build();

        ReflectionTestUtils.setField(review, "createdAt", LocalDateTime.now());
        ReflectionTestUtils.setField(review, "updatedAt", LocalDateTime.now());

        return review;
    }

    // TextReviewCreateRequest 생성
    public static TextReviewCreateRequest createTextReviewRequest(Integer rating, String content, Boolean isSpoil) {
        return new TextReviewCreateRequest(rating, content, isSpoil);
    }

    // 테스트용 MockMultipartFile 생성 메서드 추가
    public static MockMultipartFile createMockPhotocard() {
        return new MockMultipartFile(
                "photocard",
                "test.jpg",
                "image/jpeg",
                "test image content".getBytes()
        );
    }

    // PhotoReviewCreateRequest 생성
    public static PhotoReviewCreateRequest createPhotoReviewRequest(Integer rating, String content, Boolean isSpoil) {
        return new PhotoReviewCreateRequest(rating, content, isSpoil, createMockPhotocard());
    }

    // ReviewUpdateRequest 생성
    public static ReviewUpdateRequest createReviewUpdateRequest(Integer rating, String content, Boolean isSpoil) {
        return new ReviewUpdateRequest(rating, content, isSpoil);
    }

    // ReviewLike 생성
    public static ReviewLike createReviewLike(Member member, Review review, Boolean isLike) {
        return ReviewLike.builder()
                .member(member)
                .review(review)
                .isLike(isLike)
                .build();
    }

    // ID가 포함된 ReviewLike 생성
    public static ReviewLike createReviewLikeWithId(Long id, Member member, Review review, Boolean isLike) {
        ReviewLike reviewLike = createReviewLike(member, review, isLike);
        ReflectionTestUtils.setField(reviewLike, "id", id);
        return reviewLike;
    }
}