package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.Director;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DirectorRepository extends JpaRepository<Director, Long> {
    Optional<Director> findByName(String name);
    boolean existsByName(String name);
    Optional<Director> findByTmdbId(Long id);
}