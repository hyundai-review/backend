package hyundai.movie.domains.member.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import hyundai.movie.domains.member.api.response.MemberLoginResponse;
import hyundai.movie.domains.member.client.KakaoApiClient;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.dto.KakaoTokenResponseDto;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.global.auth.token.AuthTokens;
import hyundai.movie.global.auth.token.AuthTokensGenerator;
import hyundai.movie.global.auth.token.JwtTokenReissue;
import hyundai.movie.helper.MemberTestHelper;
import javax.naming.AuthenticationException;
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
    private static final String TEST_NEW_ACCESS_TOKEN = "new_test_access_token";
    private static final String TEST_NEW_REFRESH_TOKEN = "new_test_refresh_token";


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

    @Nested
    @DisplayName("토큰 재발급 테스트")
    class RefreshTest {

        @Test
        @DisplayName("토큰 재발급 성공")
        void refresh_success() throws AuthenticationException {
            // given
            AuthTokens newAuthTokens = AuthTokens.of(TEST_NEW_ACCESS_TOKEN, TEST_NEW_REFRESH_TOKEN);
            when(jwtTokenReissue.reissue(TEST_REFRESH_TOKEN)).thenReturn(newAuthTokens);

            // when
            AuthTokens result = oAuthLoginService.refresh(TEST_REFRESH_TOKEN);

            // then
            assertThat(result).isNotNull();
            assertThat(result.getAccessToken()).isEqualTo(TEST_NEW_ACCESS_TOKEN);
            assertThat(result.getRefreshToken()).isEqualTo(TEST_NEW_REFRESH_TOKEN);
            verify(jwtTokenReissue, times(1)).reissue(TEST_REFRESH_TOKEN);
        }

        @Test
        @DisplayName("유효하지 않은 리프레시 토큰으로 재발급 실패")
        void refresh_fail_invalid_token() throws AuthenticationException {
            // given
            when(jwtTokenReissue.reissue(TEST_REFRESH_TOKEN))
                    .thenThrow(new AuthenticationException("Invalid refresh token"));

            // when & then
            assertThatThrownBy(() -> oAuthLoginService.refresh(TEST_REFRESH_TOKEN))
                    .isInstanceOf(AuthenticationException.class)
                    .hasMessage("Invalid refresh token");

            verify(jwtTokenReissue, times(1)).reissue(TEST_REFRESH_TOKEN);
        }

        @Test
        @DisplayName("존재하지 않는 회원의 토큰으로 재발급 실패")
        void refresh_fail_member_not_found() throws AuthenticationException {
            // given
            when(jwtTokenReissue.reissue(TEST_REFRESH_TOKEN))
                    .thenThrow(new MemberNotFoundException("Member not found"));

            // when & then
            assertThatThrownBy(() -> oAuthLoginService.refresh(TEST_REFRESH_TOKEN))
                    .isInstanceOf(MemberNotFoundException.class)
                    .hasMessage("Member not found");

            verify(jwtTokenReissue, times(1)).reissue(TEST_REFRESH_TOKEN);
        }
    }

}
