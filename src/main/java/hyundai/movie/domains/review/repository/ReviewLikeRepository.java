package hyundai.movie.domains.review.repository;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.domain.ReviewLike;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ReviewLikeRepository extends JpaRepository<ReviewLike, Long> {
    @Query("SELECT rl FROM ReviewLike rl JOIN FETCH rl.review r WHERE r.id = :reviewId AND rl.member.id = :memberId")
    Optional<ReviewLike> findReviewLikeByReviewIdAndMemberId(@Param("reviewId") Long reviewId, @Param("memberId") Long memberId);

    boolean existsByReviewAndMember(Review review, Member member);
}
