package hyundai.movie.domains.member.api;

import hyundai.movie.domains.member.api.request.KakaoLoginRequest;
import hyundai.movie.domains.member.api.response.MemberLoginResponse;
import hyundai.movie.domains.member.api.response.RefreshJwtTokenResponse;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.service.OAuthLoginService;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import java.time.Duration;
import javax.naming.AuthenticationException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {

    private final OAuthLoginService oAuthLoginService;

    @PostMapping("/login")
    public ResponseEntity<?> kakaoLogin(
            @Valid @RequestBody KakaoLoginRequest request,
            HttpServletResponse response) {

        MemberLoginResponse loginResponse = oAuthLoginService.kakaoLogin(
                request.getAuthorizationCode());

        setRefreshTokenCookie(response, loginResponse.getRefreshToken());

        return ResponseEntity.ok(loginResponse);
    }

    @PostMapping("/refresh")
    public ResponseEntity<?> refresh(
            @CookieValue(name = "refreshToken") String refreshToken) {
        try {
            return ResponseEntity.ok(
                    RefreshJwtTokenResponse.of(
                            oAuthLoginService.refresh(refreshToken)));
        } catch (AuthenticationException ex) {
            log.error("JWT refresh token AuthenticationException : ", ex);
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        } catch (MemberNotFoundException ex) {
            log.error("Member Not Found : ", ex);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    private void setRefreshTokenCookie(HttpServletResponse response, String refreshToken) {
        ResponseCookie cookie = ResponseCookie.from("refreshToken", refreshToken)
                .httpOnly(true)
                .secure(true)
                .path("/auth/refresh")
                .sameSite("Strict")
                .maxAge(Duration.ofDays(14))
                .build();

        response.addHeader(HttpHeaders.SET_COOKIE, cookie.toString());
    }
}

