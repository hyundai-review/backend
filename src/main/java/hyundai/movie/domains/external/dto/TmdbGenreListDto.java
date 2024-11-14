package hyundai.movie.domains.external.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbGenreListDto {
    private List<TmdbGenreDto> genres;
}
