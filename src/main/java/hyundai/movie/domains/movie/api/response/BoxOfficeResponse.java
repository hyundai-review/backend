package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Getter;

@Getter
public class BoxOfficeResponse {
    private final Long movieId;
    private final Integer rank;
    private final String poster;
    private final String releaseDate;

    private BoxOfficeResponse(Long movieId, Integer rank, String poster, String releaseDate) {
        this.movieId = movieId;
        this.rank = rank;
        this.poster = poster;
        this.releaseDate = releaseDate;
    }

    public static BoxOfficeResponse of(Movie movie, Integer rank) {
        String posterPath = movie
                .getImages().stream()
                .filter(MovieImage::getIsPoster)
                .findFirst()
                .map(MovieImage::getFilePath)
                .orElse(null);

        return new BoxOfficeResponse(
                movie.getId(),
                rank,
                posterPath,
                movie.getReleaseDate()
        );
    }
}
