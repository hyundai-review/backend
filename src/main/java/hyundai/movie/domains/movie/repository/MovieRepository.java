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

    boolean existsByTitleContaining(String keyword);

    @Query("SELECT m FROM Movie m WHERE m.title LIKE %:keyword%")
    Slice<Movie> searchByTitleContaining(@Param("keyword") String keyword, Pageable pageable);

    @Query("SELECT m FROM Movie m " +
            "WHERE NOT EXISTS (SELECT r FROM Review r WHERE r.movie = m AND r.member.id = :memberId) " +
            "ORDER BY m.voteAvg")
    Slice<Movie> findMoviesByVoteAvg(@Param("memberId") Long memberId, Pageable pageable);

    @Query("SELECT m FROM Movie m " +
            "JOIN MovieGenre mg ON m.id = mg.movie.id " +
            "WHERE mg.genre.id = :genreId " +
            "AND NOT EXISTS (SELECT r FROM Review r WHERE r.movie = m AND r.member.id = :memberId) " +
            "ORDER BY m.popularity")
    Slice<Movie> findMoviesByGenreAndPopularity(@Param("genreId") Long genreId, @Param("memberId") Long memberId, Pageable pageable);

    @Query("SELECT DISTINCT m FROM Movie m " +
            "JOIN m.movieGenres mg " +
            "WHERE mg.genre.id IN :genre_ids " +
            "GROUP BY m " +
            "ORDER BY m.voteAvg DESC")
    Set<Movie> findMoviesByGenreIds(@Param("genre_ids") Set<String> genreIds);

    @Query("SELECT DISTINCT m FROM Movie m " +
            "LEFT JOIN m.movieGenres mg " +
            "WHERE mg.genre.id NOT IN :includedGenreIds " +
            "GROUP BY m " +
            "ORDER BY m.voteAvg DESC")
    List<Movie> findTop150ByMovieGenresIdNotIn(@Param("includedGenreIds") Set<String> includedGenreIds);

    @Query("SELECT m FROM Movie m " +
            "WHERE m.id IN :ids " +
            "AND NOT EXISTS (SELECT r FROM Review r WHERE r.movie = m AND r.member.id = :memberId)")
    List<Movie> findByIdIn(@Param("ids") List<Long> ids, @Param("memberId") Long memberId);

    boolean existsByTmdbId(Long id);
}
