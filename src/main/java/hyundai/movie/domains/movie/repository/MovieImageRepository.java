package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.MovieImage;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieImageRepository extends JpaRepository<MovieImage, Long> {
    List<MovieImage> findByMovieId(Long movieId);
    void deleteByMovieId(Long movieId);

    @Query("SELECT EXISTS (SELECT 1 FROM MovieImage mi " +
            "WHERE mi.movie.id = :movieId " +
            "AND (mi.width = 0 OR mi.height = 0))")
    boolean existsByMovieIdAndInvalid(Long movieId);
}

