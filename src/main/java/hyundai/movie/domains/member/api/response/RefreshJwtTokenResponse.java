package hyundai.movie.domains.member.api.response;

import hyundai.movie.global.auth.token.AuthTokens;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public class RefreshJwtTokenResponse {
    private final String accessToken;

    public static RefreshJwtTokenResponse of(AuthTokens authTokens) {
        return new RefreshJwtTokenResponse(authTokens.getAccessToken());
    }
}

