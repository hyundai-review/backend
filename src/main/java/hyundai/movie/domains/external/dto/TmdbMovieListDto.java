package hyundai.movie.domains.external.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import lombok.Getter;

@Getter
public class TmdbMovieListDto {
    private final List<TmdbMovieDto> results;
    private final int page;
    @JsonProperty("total_pages")
    private final int totalPages;

    public TmdbMovieListDto(List<TmdbMovieDto> results, int page, int totalPages) {
        this.results = results;
        this.page = page;
        this.totalPages = totalPages;
    }
}
