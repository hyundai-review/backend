package hyundai.movie.domains.member.service;

import hyundai.movie.domains.member.api.response.MemberLoginResponse;
import hyundai.movie.domains.member.client.KakaoApiClient;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoTokenResponseDto;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.global.auth.token.AuthTokens;
import hyundai.movie.global.auth.token.AuthTokensGenerator;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Transactional
public class OAuthLoginService {

    private final KakaoApiClient kakaoApiClient;
    private final MemberService memberService;
    private final AuthTokensGenerator authTokensGenerator;

    public MemberLoginResponse kakaoLogin(String authorizationCode) {

        // 1. 인가코드로 토큰 조회
        KakaoTokenResponseDto token = kakaoApiClient.getToken(authorizationCode);

        // 2. 토큰으로 카카오 유저 정보 조회
        KakaoMemberResponseDto kakaoMemberInfo = kakaoApiClient.getKakaoMemberInfo(token.getAccessToken());

        // 3. 회원가입/로그인 처리
        Member member = memberService.loginOrRegister(kakaoMemberInfo);

        // 4. JWT 토큰 생성
        AuthTokens authTokens = authTokensGenerator.generate(member.getId());

        return MemberLoginResponse.of(member, authTokens);
    }
}
