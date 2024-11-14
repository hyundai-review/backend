package hyundai.movie.domains.movie.repository;

import hyundai.movie.domains.movie.domain.BoxOffice;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface BoxOfficeRepository extends JpaRepository<BoxOffice, Long> {

    @Query("SELECT b FROM BoxOffice b JOIN FETCH b.movie WHERE b.targetDate = :date")
    List<BoxOffice> findByDateWithMovie(String date);
}
