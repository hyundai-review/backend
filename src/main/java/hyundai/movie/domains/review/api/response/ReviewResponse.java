package hyundai.movie.domains.review.api.response;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.review.domain.Review;
import lombok.Getter;

@Getter
public class ReviewResponse {
    private final Long reviewId;
    private final Integer rating;
    private final Boolean isSpoil;
    private final String content;
    private final String photocard;
  //  private final Integer totalComments; // 리뷰에 달린 전체 댓글 수
    private final AuthorInfo author;
    private final Boolean isLike; // 로그인한 사용자가 좋아요를 눌렀는지 여부
    private final String createdAt;
    private final String updatedAt;

    private ReviewResponse(Long reviewId, Integer rating, Boolean isSpoil, String content, String photocard,  AuthorInfo author, Boolean isLike, String createdAt, String updatedAt) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.isSpoil = isSpoil;
        this.content = content;
        this.photocard = photocard;
    //    this.totalComments = totalComments;
        this.author = author;
        this.isLike = isLike;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public static ReviewResponse from(Review review, boolean isLike) {
        return new ReviewResponse(
                review.getId(),
                review.getRating(),
                review.getIsSpoil(),
                review.getContent(),
                review.getPhotocard(),
           //     review.getTotalComments(),  // `getTotalComments()`는 실제 구현에 따라 수정이 필요할 수 있음
                AuthorInfo.from(review.getMember()),
                isLike,
                review.getCreatedAt().toString(),
                review.getUpdatedAt().toString()
        );
    }

    @Getter
    public static class AuthorInfo {
        private final String profile;
        private final String nickname;

        private AuthorInfo(String profile, String nickname) {
            this.profile = profile;
            this.nickname = nickname;
        }

        public static AuthorInfo from(Member member) {
            return new AuthorInfo(member.getProfile(), member.getNickname());
        }
    }
}
