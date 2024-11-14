package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.Actor;
import lombok.Getter;

@Getter
public class ActorDto {
    private final String profile;
    private final String name;
    private final String role;

    private ActorDto(String profile, String name, String role) {
        this.profile = profile;
        this.name = name;
        this.role = role;
    }

    public static ActorDto of(Actor actor, String role) {
        return new ActorDto(
                actor.getProfile(),
                actor.getName(),
                role
        );
    }
}
