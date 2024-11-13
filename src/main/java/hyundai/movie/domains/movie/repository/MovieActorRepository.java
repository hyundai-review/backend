package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.MovieActor;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieActorRepository extends JpaRepository<MovieActor, Long> {
    List<MovieActor> findByMovieId(Long movieId);
    List<MovieActor> findByActorId(Long actorId);
}
