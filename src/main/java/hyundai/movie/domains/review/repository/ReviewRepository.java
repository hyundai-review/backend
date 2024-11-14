package hyundai.movie.domains.review.repository;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.review.domain.Review;
import java.util.List;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findByMemberId(Long memberId);
    // 페이징
    Slice<Review> findByMovieId(Long movieId, org.springframework.data.domain.Pageable pageable);
    boolean existsByMovieAndMember(Movie movie, Member member);

}
