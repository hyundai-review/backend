package hyundai.movie.domains.movie.domain;

import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.util.ArrayList;
import java.util.List;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "movie")
public class Movie extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private Long tmdbId;

    private String title;
    private String releaseDate;
    private String tagline;

    @Column(columnDefinition = "TEXT")
    private String overview;

    private Integer runtime;
    private String certification;
    private String status;
    private Double popularity;
    private Double voteAvg;
    private Long revenue;

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MovieGenre> movieGenres = new ArrayList<>();

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MovieActor> movieActors = new ArrayList<>();

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MovieDirector> movieDirectors = new ArrayList<>();

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MovieImage> images = new ArrayList<>();

    @Builder
    public Movie(Long tmdbId, String title, String releaseDate, String tagline,
            String overview, Integer runtime, String certification,
            String status, Double popularity, Double voteAvg, Long revenue) {
        this.tmdbId = tmdbId;
        this.title = title;
        this.releaseDate = releaseDate;
        this.tagline = tagline;
        this.overview = overview;
        this.runtime = runtime;
        this.certification = certification;
        this.status = status;
        this.popularity = popularity;
        this.voteAvg = voteAvg;
        this.revenue = revenue;
    }

    public void addImage(Integer width, Integer height, String filePath, Boolean isPoster) {
        MovieImage image = MovieImage.builder()
                .movie(this)
                .width(width)
                .height(height)
                .filePath(filePath)
                .isPoster(isPoster)
                .build();
        this.images.add(image);
    }
}
