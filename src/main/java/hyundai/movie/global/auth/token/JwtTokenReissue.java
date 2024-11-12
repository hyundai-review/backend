package hyundai.movie.global.auth.token;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.global.auth.jwt.JwtTokenProvider;
import hyundai.movie.global.auth.jwt.RefreshTokenProvider;
import javax.naming.AuthenticationException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class JwtTokenReissue {
    private final JwtTokenProvider jwtTokenProvider;
    private final RefreshTokenProvider refreshTokenProvider;
    private final MemberRepository memberRepository;

    public AuthTokens reissue(String refreshToken) throws AuthenticationException, MemberNotFoundException {
        if(refreshTokenProvider.validateToken(refreshToken)) {
            log.info("===================== VALIDATED ======================");

            Long memberId = refreshTokenProvider.getMemberId(refreshToken);

            Member member = memberRepository.findById(memberId).orElseThrow(MemberNotFoundException::new);

            String accessToken = jwtTokenProvider.generate(member.getId());

            return AuthTokens.of(accessToken, refreshToken);
        } else {
            throw new AuthenticationException("refresh 토큰 인증 실패");
        }
    }
}
