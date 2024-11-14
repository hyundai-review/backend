package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Getter;

@Getter
public class PosterDto {
    private final Integer height;
    private final Integer width;
    private final String filePath;

    private PosterDto(Integer height, Integer width, String filePath) {
        this.height = height;
        this.width = width;
        this.filePath = filePath;
    }

    public static PosterDto from(MovieImage poster) {
        return new PosterDto(
                poster.getHeight(),
                poster.getWidth(),
                poster.getFilePath()
        );
    }
}
