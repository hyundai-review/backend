package hyundai.movie.domains.crawler.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import hyundai.movie.domains.movie.domain.Movie;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class TmdbMovieDto {
    private Long id;  // tmdbId
    private String title;
    @JsonProperty("release_date")
    private String releaseDate;
    private String tagline;
    private String overview;
    private Integer runtime;
    private String status;
    private Double popularity;
    @JsonProperty("vote_average")
    private Double voteAvg;
    private Long revenue;
    @JsonProperty("poster_path")
    private String posterPath;
    @JsonProperty("backdrop_path")
    private String backdropPath;

    // 장르 정보
    private List<TmdbGenreDto> genres;

    // 배우/감독 정보
    private TmdbCreditsDto credits;

    // 인증 등급 (한국)
    @JsonProperty("release_dates")
    private TmdbReleaseDateDto releaseDates;

    public String getCertification() {
        if (releaseDates == null || releaseDates.getResults() == null) {
            return null;
        }
        return releaseDates.getResults().stream()
                .filter(r -> "KR".equals(r.getIso31661()))
                .findFirst()
                .map(r -> r.getReleaseDates().get(0).getCertification())
                .orElse(null);
    }
}
