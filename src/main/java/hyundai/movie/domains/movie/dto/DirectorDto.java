package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.Director;
import lombok.Getter;

@Getter
public class DirectorDto {
    private final String profile;
    private final String name;

    private DirectorDto(String profile, String name) {
        this.profile = profile;
        this.name = name;
    }

    public static DirectorDto from(Director director) {
        return new DirectorDto(
                director.getProfile(),
                director.getName()
        );
    }
}
