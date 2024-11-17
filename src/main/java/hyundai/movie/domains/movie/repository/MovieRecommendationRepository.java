package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.MovieRecommendation;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface MovieRecommendationRepository extends JpaRepository<MovieRecommendation, Long> {
    Optional<MovieRecommendation> findByMember(Member member);
}
