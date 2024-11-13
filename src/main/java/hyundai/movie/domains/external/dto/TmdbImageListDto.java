package hyundai.movie.domains.external.dto;

import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Builder
@AllArgsConstructor
public class TmdbImageListDto {
    private List<TmdbImageDto> posters;
    private List<TmdbImageDto> backdrops;
}
