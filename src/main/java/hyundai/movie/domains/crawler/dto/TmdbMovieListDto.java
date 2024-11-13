package hyundai.movie.domains.crawler.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbMovieListDto {
    private List<TmdbMovieDto> results;
    private int page;
    private int totalPages;
}
