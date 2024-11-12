package hyundai.movie.global.auth.token;

import lombok.Getter;

@Getter
public class AuthTokens {
    private final String accessToken;
    private final String refreshToken;

    private AuthTokens(String accessToken, String refreshToken) {
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
    }

    public static AuthTokens of(String accessToken, String refreshToken) {
        return new AuthTokens(accessToken, refreshToken);
    }
}
