package hyundai.movie.domains.member.client;

import hyundai.movie.domains.member.dto.KakaoTokenResponseDto;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.util.UriComponentsBuilder;

@Slf4j
@Component
@RequiredArgsConstructor
public class KakaoApiClient {
    private final WebClient webClient;

    @Value("${kakao.client.id}")
    private String clientId;

    @Value("${kakao.redirect.uri}")
    private String redirectUri;

    public KakaoTokenResponseDto getToken(String authorizationCode) {
        String requestUrl = UriComponentsBuilder
                .fromHttpUrl("https://kauth.kakao.com/oauth/token")
                .queryParam("grant_type", "authorization_code")
                .queryParam("client_id", clientId)
                .queryParam("redirect_uri", redirectUri)
                .queryParam("code", authorizationCode)
                .build()
                .toString();

        log.info("Request URL: {}", requestUrl);  // 실제 요청 URL 확인용

        return webClient
                .post()
                .uri(requestUrl)
                .contentType(MediaType.APPLICATION_FORM_URLENCODED)
                .retrieve()
                .bodyToMono(KakaoTokenResponseDto.class)
                .block();
    }

    public KakaoMemberResponseDto getKakaoMemberInfo(String token) {
        return webClient.get()
                .uri("https://kapi.kakao.com/v2/user/me")
                .header("Authorization", "Bearer " + token)
                .retrieve()
                .bodyToMono(KakaoMemberResponseDto.class)
                .block();
    }
}
