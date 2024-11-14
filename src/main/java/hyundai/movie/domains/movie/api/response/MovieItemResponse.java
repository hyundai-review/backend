package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Builder;
import lombok.Getter;

@Getter
public class MovieItemResponse {
    private final Long movieId;
    private final String poster;
    private final String title;
    private final String tagline;
    private final String releaseDate;

    @Builder
    private MovieItemResponse(Long movieId, String poster, String title, String tagline,
            String releaseDate) {
        this.movieId = movieId;
        this.poster = poster;
        this.title = title;
        this.tagline = tagline;
        this.releaseDate = releaseDate;
    }

    public static MovieItemResponse from(Movie movie) {
        String posterPath = movie
                .getImages().stream()
                .filter(MovieImage::getIsPoster)
                .findFirst()
                .map(MovieImage::getFilePath)
                .orElse(null);

        return MovieItemResponse.builder()
                .movieId(movie.getId())
                .poster(posterPath)
                .title(movie.getTitle())
                .tagline(movie.getTagline())
                .releaseDate(movie.getReleaseDate())
                .build();
    }
}
