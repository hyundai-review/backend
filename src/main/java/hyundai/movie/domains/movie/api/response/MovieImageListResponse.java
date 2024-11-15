package hyundai.movie.domains.movie.api.response;

import hyundai.movie.domains.movie.domain.MovieImage;
import hyundai.movie.domains.movie.dto.ImageDto;
import java.util.List;
import lombok.Builder;
import lombok.Getter;

@Getter
public class MovieImageListResponse {
    private final List<ImageDto> posters;
    private final List<ImageDto> stillcuts;

    @Builder
    private MovieImageListResponse(List<ImageDto> posters, List<ImageDto> stillcuts) {
        this.posters = posters;
        this.stillcuts = stillcuts;
    }

    public static MovieImageListResponse of(List<MovieImage> images) {
        return MovieImageListResponse.builder()
                .posters(images.stream()
                        .filter(MovieImage::getIsPoster)
                        .map(ImageDto::from)
                        .toList())
                .stillcuts(images.stream()
                        .filter(movieImage -> !movieImage.getIsPoster())
                        .map(ImageDto::from)
                        .toList())
                .build();
    }
}
