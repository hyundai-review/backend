package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.Movie;
import java.util.Optional;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    Optional<Movie> findByTmdbId(Long tmdbId);

    @Query("SELECT m FROM Movie m WHERE m.title LIKE %:keyword%")
    Slice<Movie> searchByTitleContaining(@Param("keyword") String keyword, Pageable pageable);
}
