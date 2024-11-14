package hyundai.movie.domains.external.dto;

import java.util.List;
import java.util.stream.Collectors;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class TmdbCreditsDto {
    private List<TmdbCastDto> cast;
    private List<TmdbCrewDto> crew;

    public List<TmdbCrewDto> getDirectors() {
        return crew.stream()
                .filter(c -> "Director".equals(c.getJob()))
                .collect(Collectors.toList());
    }
}