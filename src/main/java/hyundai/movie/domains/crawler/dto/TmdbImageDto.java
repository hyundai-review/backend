package hyundai.movie.domains.crawler.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbImageDto {
    private String filePath;
    private Integer width;
    private Integer height;
}
