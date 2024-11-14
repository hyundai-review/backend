package hyundai.movie.domains.movie.domain;

import hyundai.movie.global.common.BaseTimeEntity;
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
@NoArgsConstructor
@Table(name = "director")
public class Director extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private Long tmdbId;

    private String profile;

    private String name;

    @OneToMany(mappedBy = "director")
    private List<MovieDirector> movieDirectors = new ArrayList<>();

    @Builder
    public Director(Long tmdbId, String profile, String name) {
        this.tmdbId = tmdbId;
        this.profile = profile;
        this.name = name;
    }
}
