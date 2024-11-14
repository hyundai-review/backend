package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.Actor;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActorRepository extends JpaRepository<Actor, Long> {
    Optional<Actor> findByName(String name);
    boolean existsByName(String name);
    Optional<Actor> findByTmdbId(Long id);
}
