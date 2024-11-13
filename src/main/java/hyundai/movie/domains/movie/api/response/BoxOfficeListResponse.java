package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.Movie;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import lombok.Getter;

@Getter
public class BoxOfficeListResponse {
    private final List<BoxOfficeResponse> movies;

    private BoxOfficeListResponse(List<BoxOfficeResponse> movies) {
        this.movies = movies;
    }

    public static BoxOfficeListResponse from(List<Movie> movieList) {
        List<BoxOfficeResponse> response = IntStream.range(0, movieList.size())
                .mapToObj(index -> BoxOfficeResponse.of(movieList.get(index), index))
                .collect(Collectors.toList());

        return new BoxOfficeListResponse(response);
    }
}
