package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.Genre;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenreRepository extends JpaRepository<Genre, Long> {
    Optional<Genre> findByName(String name);
    Optional<Genre> findByTmdbId(Long id);
}
