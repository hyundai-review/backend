package hyundai.movie.domains.external.client;

import hyundai.movie.domains.external.dto.KobisBoxOfficeDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

@Slf4j
@Component
@RequiredArgsConstructor
public class KobisApiClient {
    private final WebClient webClient;

    @Value("${kobis.api.key}")
    private String apiKey;

    @Value("${kobis.api.base-url}")
    private String baseUrl;

    // 일별 박스오피스
    public KobisBoxOfficeDto getDailyBoxOffice(String targetDt) {
        String requestUrl = baseUrl + "/boxoffice/searchDailyBoxOfficeList.json"
                + "?key=" + apiKey
                + "&targetDt=" + targetDt;

        return webClient.get()
                .uri(requestUrl)
                .retrieve()
                .bodyToMono(KobisBoxOfficeDto.class)
                .block();
    }
}
