package hyundai.movie.domains.movie.domain;

import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor
@Table(name = "image")
public class MovieImage extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id")
    private Movie movie;

    private Integer height;

    private Integer width;

    private String filePath;

    private Boolean isPoster;

    @Builder
    public MovieImage(Movie movie, Integer height, Integer width, String filePath, Boolean isPoster) {
        this.movie = movie;
        this.height = height;
        this.width = width;
        this.filePath = filePath;
        this.isPoster = isPoster;
    }
}
