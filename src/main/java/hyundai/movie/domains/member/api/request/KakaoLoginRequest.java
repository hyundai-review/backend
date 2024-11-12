package hyundai.movie.domains.member.api.request;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class KakaoLoginRequest {
    private String authorizationCode;

    @Builder
    public KakaoLoginRequest(String authorizationCode) {
        this.authorizationCode = authorizationCode;
    }
}
