package hyundai.movie.domains.crawler.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbCastDto {
    private Long id;
    private String name;
    @JsonProperty("profile_path")
    private String profilePath;
    private String character;
}
