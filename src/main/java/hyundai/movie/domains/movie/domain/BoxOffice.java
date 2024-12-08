package hyundai.movie.domains.movie.domain;

import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "boxoffice")
public class BoxOffice extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    private Movie movie;

    @Column(name = "movie_rank")
    private Integer rank;

    private String targetDate;

    @Builder
    public BoxOffice(Movie movie, Integer rank, String targetDate) {
        this.movie = movie;
        this.rank = rank;
        this.targetDate = targetDate;
    }
}
