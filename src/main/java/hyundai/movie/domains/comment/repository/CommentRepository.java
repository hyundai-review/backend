package hyundai.movie.domains.comment.repository;

import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.review.domain.Review;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findByReview(Review review);
    int countByReview(Review review);
}
