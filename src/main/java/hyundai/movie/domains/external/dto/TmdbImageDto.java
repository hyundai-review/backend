package hyundai.movie.domains.external.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbImageDto {
    @JsonProperty("file_path")
    private String filePath;
    private Integer width;
    private Integer height;
}
