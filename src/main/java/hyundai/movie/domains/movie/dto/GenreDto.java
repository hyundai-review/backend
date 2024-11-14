package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.Genre;
import lombok.Getter;

@Getter
public class GenreDto {
    private final Long genreId;
    private final String name;

    private GenreDto(Long genreId, String name) {
        this.genreId = genreId;
        this.name = name;
    }

    public static GenreDto from(Genre genre) {
        return new GenreDto(
                genre.getId(),
                genre.getName()
        );
    }
}
