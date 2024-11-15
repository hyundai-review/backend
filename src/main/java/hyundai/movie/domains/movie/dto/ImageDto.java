package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Getter;

@Getter
public class ImageDto {
    private final Integer height;
    private final Integer width;
    private final String filePath;

    private ImageDto(Integer height, Integer width, String filePath) {
        this.height = height;
        this.width = width;
        this.filePath = filePath;
    }

    public static ImageDto from(MovieImage poster) {
        return new ImageDto(
                poster.getHeight(),
                poster.getWidth(),
                poster.getFilePath()
        );
    }
}
