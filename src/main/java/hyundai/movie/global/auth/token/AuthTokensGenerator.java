package hyundai.movie.global.auth.token;

import hyundai.movie.global.auth.jwt.JwtTokenProvider;
import hyundai.movie.global.auth.jwt.RefreshTokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class AuthTokensGenerator {
    private final JwtTokenProvider jwtTokenProvider;
    private final RefreshTokenProvider refreshTokenProvider;

    public AuthTokens generate(Long memberId) {
        String accessToken = jwtTokenProvider.generate(memberId);
        String refreshToken = refreshTokenProvider.generate(memberId);

        return AuthTokens.of(accessToken, refreshToken);
    }
}
