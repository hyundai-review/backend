package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.MovieDirector;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieDirectorRepository extends JpaRepository<MovieDirector, Long> {
    List<MovieDirector> findByMovieId(Long movieId);
    List<MovieDirector> findByDirectorId(Long directorId);
}
