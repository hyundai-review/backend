package hyundai.movie.domains.review.repository;

import hyundai.movie.domains.review.domain.Review;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findByMovieId(Long movieId);
    List<Review> findByMemberId(Long memberId);
    // 페이징
    List<Review> findByMovieId(Long movieId, org.springframework.data.domain.Pageable pageable);

}
