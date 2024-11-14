package hyundai.movie.domains.external.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbCountryReleaseDateDto {
    @JsonProperty("iso_3166_1")
    private String iso31661;
    @JsonProperty("release_dates")
    private List<TmdbReleaseDateItemDto> releaseDates;
}
