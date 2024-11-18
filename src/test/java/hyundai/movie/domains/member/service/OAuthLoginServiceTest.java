package hyundai.movie.domains.member.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import hyundai.movie.domains.member.api.response.MemberLoginResponse;
import hyundai.movie.domains.member.client.KakaoApiClient;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.dto.KakaoTokenResponseDto;
import hyundai.movie.global.auth.token.AuthTokens;
import hyundai.movie.global.auth.token.AuthTokensGenerator;
import hyundai.movie.global.auth.token.JwtTokenReissue;
import hyundai.movie.helper.MemberTestHelper;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
public class OAuthLoginServiceTest {

    @InjectMocks
    private OAuthLoginService oAuthLoginService;

    @Mock
    private KakaoApiClient kakaoApiClient;

    @Mock
    private MemberService memberService;

    @Mock
    private AuthTokensGenerator authTokensGenerator;

    @Mock
    private JwtTokenReissue jwtTokenReissue;

    private static final String TEST_AUTHORIZATION_CODE = "test_authorization_code";
    private static final String TEST_ACCESS_TOKEN = "test_access_token";
    private static final String TEST_REFRESH_TOKEN = "test_refresh_token";

    @Nested
    @DisplayName("카카오 로그인 테스트")
    class KakaoLoginTest {

        @Test
        @DisplayName("카카오 로그인 성공")
        void kakaoLogin() {
            // given
            Long memberId = 1L;
            KakaoTokenResponseDto kakaoToken = MemberTestHelper.createKakaoTokenResponseDto();
            KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
            Member newMember = MemberTestHelper.createMemberWithId(memberId);
            AuthTokens authTokens = AuthTokens.of(TEST_ACCESS_TOKEN, TEST_REFRESH_TOKEN);

            when(kakaoApiClient.getToken(TEST_AUTHORIZATION_CODE)).thenReturn(kakaoToken);
            when(kakaoApiClient.getKakaoMemberInfo(TEST_ACCESS_TOKEN)).thenReturn(kakaoInfo);
            when(memberService.loginOrRegister(kakaoInfo)).thenReturn(newMember);
            when(authTokensGenerator.generate(memberId)).thenReturn(authTokens);

            // when
            MemberLoginResponse result = oAuthLoginService.kakaoLogin(TEST_AUTHORIZATION_CODE);

            // then
            assertThat(result).isNotNull();
            assertThat(result.getMemberId()).isEqualTo(memberId);
            assertThat(result.getNickname()).isEqualTo(newMember.getNickname());
            assertThat(result.getProfile()).isEqualTo(newMember.getProfile());
            assertThat(result.getAccessToken()).isEqualTo(authTokens.getAccessToken());
            assertThat(result.getRefreshToken()).isEqualTo(authTokens.getRefreshToken());

            verify(kakaoApiClient, times(1)).getToken(TEST_AUTHORIZATION_CODE);
            verify(kakaoApiClient, times(1)).getKakaoMemberInfo(TEST_ACCESS_TOKEN);
            verify(memberService, times(1)).loginOrRegister(any(KakaoMemberResponseDto.class));
            verify(authTokensGenerator, times(1)).generate(memberId);
        }

        @Test
        @DisplayName("기존 회원 카카오 로그인 성공")
        void kakaoLoginExistingMember() {
            // given
            Long memberId = 1L;
            KakaoTokenResponseDto kakaoToken = MemberTestHelper.createKakaoTokenResponseDto();
            KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
            Member existingMember = MemberTestHelper.createCustomMemberWithId(
                    memberId,
                    "기존회원",
                    "12345",
                    "http://profile.jpg",
                    true
            );
            AuthTokens authTokens = AuthTokens.of(TEST_ACCESS_TOKEN, TEST_REFRESH_TOKEN);

            when(kakaoApiClient.getToken(TEST_AUTHORIZATION_CODE)).thenReturn(kakaoToken);
            when(kakaoApiClient.getKakaoMemberInfo(TEST_ACCESS_TOKEN)).thenReturn(kakaoInfo);
            when(memberService.loginOrRegister(kakaoInfo)).thenReturn(existingMember);
            when(authTokensGenerator.generate(memberId)).thenReturn(authTokens);

            // when
            MemberLoginResponse result = oAuthLoginService.kakaoLogin(TEST_AUTHORIZATION_CODE);

            // then
            assertThat(result).isNotNull();
            assertThat(result.getMemberId()).isEqualTo(memberId);
            assertThat(result.getNickname()).isEqualTo(existingMember.getNickname());
            assertThat(result.getProfile()).isEqualTo(existingMember.getProfile());
            assertThat(result.getAccessToken()).isEqualTo(authTokens.getAccessToken());
            assertThat(result.getRefreshToken()).isEqualTo(authTokens.getRefreshToken());

            verify(kakaoApiClient, times(1)).getToken(TEST_AUTHORIZATION_CODE);
            verify(kakaoApiClient, times(1)).getKakaoMemberInfo(TEST_ACCESS_TOKEN);
            verify(memberService, times(1)).loginOrRegister(any(KakaoMemberResponseDto.class));
            verify(authTokensGenerator, times(1)).generate(memberId);
        }


    }
}
