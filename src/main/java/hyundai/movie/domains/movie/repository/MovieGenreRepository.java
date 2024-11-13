package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.MovieGenre;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieGenreRepository extends JpaRepository<MovieGenre, Long> {
    List<MovieGenre> findByMovieId(Long movieId);
}
