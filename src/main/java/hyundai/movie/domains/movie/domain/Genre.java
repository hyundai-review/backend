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
@Table(name = "genre")
public class Genre extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private Long tmdbId;

    @Column(unique = true)
    private String name;

    @OneToMany(mappedBy = "genre", cascade = CascadeType.ALL)
    private List<MovieGenre> movieGenres = new ArrayList<>();

    @Builder
    public Genre(String name) {
        this.name = name;
    }
}
