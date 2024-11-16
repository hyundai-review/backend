package hyundai.movie.domains.review.repository;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.dto.RecentReviewDto;
import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findByMemberId(Long memberId);
    // 페이징
     Slice<Review> findByMovieId(Long movieId, Pageable pageable);
    // 특정 멤버 제외 전체 리뷰
    //Slice<Review> findByMovieAndMemberNot(Movie movie, Member member, Pageable pageable);
    Optional<Review> findByMovieAndMember(Movie movie, Member member);

//    @Query("SELECT r FROM Review r JOIN r.movie m JOIN r.member mem WHERE mem.id != :memberId")
//    List<Review> findAllReviewsExceptMember(@Param("memberId") Long memberId);

    @Query("SELECT r FROM Review r WHERE r.movie = :movie AND r.member <> :member")
    Slice<Review> findAllReviewsExceptMember(@Param("movie") Movie movie, @Param("member") Member member, Pageable pageable);

    // 나의 리뷰
    Slice<Review> findByMemberId(Long memberId, Pageable pageable);
    int countByMemberId(Long memberId);

    // 최근 10개
    List<Review> findTop10ByOrderByCreatedAtDesc();

    boolean existsByMovieAndMember(Movie movie, Member member);
    int countByMovie(Movie movie);

}
