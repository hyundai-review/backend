package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.Director;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieGenre;
import hyundai.movie.domains.movie.domain.MovieImage;
import hyundai.movie.domains.movie.dto.ActorDto;
import hyundai.movie.domains.movie.dto.DirectorDto;
import hyundai.movie.domains.movie.dto.GenreDto;
import hyundai.movie.domains.movie.dto.PosterDto;
import java.util.List;
import java.util.stream.Collectors;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
public class MovieResponse {

    private final Long movieId;
    private final String title;
    private final String releaseDate;
    private final String certification;
    private final Integer runtime;
    private final String status;
    private final List<GenreDto> genres;
    private final String tagline;
    private final String overview;
    private final DirectorDto director;
    private final List<ActorDto> actors;
    private final PosterDto poster;

    @Builder
    private MovieResponse(Long movieId, String title, String releaseDate, String certification,
            Integer runtime, String status, List<GenreDto> genres, String tagline, String overview,
            DirectorDto director, List<ActorDto> actors, PosterDto poster) {
        this.movieId = movieId;
        this.title = title;
        this.releaseDate = releaseDate;
        this.certification = certification;
        this.runtime = runtime;
        this.status = status;
        this.genres = genres;
        this.tagline = tagline;
        this.overview = overview;
        this.director = director;
        this.actors = actors;
        this.poster = poster;
    }

    public static MovieResponse from(Movie movie) {
        return MovieResponse.builder()
                .movieId(movie.getId())
                .title(movie.getTitle())
                .releaseDate(movie.getReleaseDate())
                .certification(movie.getCertification())
                .runtime(movie.getRuntime())
                .status(movie.getStatus())
                .genres(movie.getMovieGenres().stream()
                        .map(movieGenre -> GenreDto.from(movieGenre.getGenre()))
                        .toList())
                .tagline(movie.getTagline())
                .overview(movie.getOverview())
                .director(movie.getMovieDirectors().stream()
                        .map(movieDirector -> DirectorDto.from(movieDirector.getDirector()))
                        .findFirst()
                        .orElseGet(() -> DirectorDto.from(new Director())))
                .actors(movie.getMovieActors().stream()
                        .map(movieActor -> ActorDto.of(movieActor.getActor(), movieActor.getRole()))
                        .toList())
                .poster(movie.getImages().stream()
                        .filter(MovieImage::getIsPoster)
                        .map(PosterDto::from)
                        .findFirst()
                        .orElseGet(() -> PosterDto.from(new MovieImage())))
                .build();
    }
}
