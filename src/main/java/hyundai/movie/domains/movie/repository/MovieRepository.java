package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.Movie;
import java.util.List;
import java.util.Optional;
import java.util.Set;
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

    @Query("SELECT m FROM Movie m ORDER BY FUNCTION('RANDOM')")
    Slice<Movie> findRandomMovies(Pageable pageable);

    @Query("SELECT m FROM Movie m " +
            "JOIN m.movieGenres mg " +
            "WHERE mg.genre.id = :genre_id " +
            "ORDER BY FUNCTION('RANDOM')")
    Slice<Movie> findRandomMoviesByGenre(@Param("genre_id") Long genreId, Pageable pageable);

    @Query("SELECT DISTINCT m FROM Movie m " +
            "JOIN m.movieGenres g " +
            "WHERE g.id IN :genre_ids " +
            "GROUP BY m " +
            "ORDER BY m.voteAvg DESC")
    Set<Movie> findMoviesByGenreIds(@Param("genre_ids") Set<String> genreIds);

    @Query("SELECT DISTINCT m FROM Movie m " +
            "LEFT JOIN m.movieGenres g " +
            "WHERE g.id NOT IN :includedGenreIds " +
            "GROUP BY m " +
            "ORDER BY m.voteAvg DESC")
    List<Movie> findTop150ByMovieGenresIdNotIn(@Param("includedGenreIds") Set<String> includedGenreIds);
}
