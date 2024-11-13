package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.Movie;
import java.util.List;
import java.util.stream.Collectors;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class MovieResponse {
    private Long id;
    private String title;
    private String releaseDate;
    private String tagline;
    private String overview;
    private Integer runtime;
    private Double voteAvg;
    private List<String> genres;

    @Builder
    public MovieResponse(Movie movie) {
        this.id = movie.getId();
        this.title = movie.getTitle();
        this.releaseDate = movie.getReleaseDate();
        this.tagline = movie.getTagline();
        this.overview = movie.getOverview();
        this.runtime = movie.getRuntime();
        this.voteAvg = movie.getVoteAvg();
        this.genres = movie.getMovieGenres().stream()
                .map(mg -> mg.getGenre().getName())
                .collect(Collectors.toList());
    }
}
