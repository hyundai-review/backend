package hyundai.movie.domains.movie.api;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/images")
@RequiredArgsConstructor
public class ImageProxyController {

    private final RestTemplate restTemplate;

    @GetMapping("/tmdb/{size}/{imagePath}")
    public ResponseEntity<byte[]> getImage(
            @PathVariable String size,
            @PathVariable String imagePath) {
        try {
            // TMDB 이미지 URL 구성
            String TMDB_IMAGE_BASE_URL = "https://image.tmdb.org/t/p/";
            String imageUrl = TMDB_IMAGE_BASE_URL + size + "/" + imagePath;

            // TMDB에서 이미지 다운로드
            ResponseEntity<byte[]> response = restTemplate.getForEntity(
                    imageUrl,
                    byte[].class
            );

            // 응답 헤더 설정
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.IMAGE_JPEG);
            headers.setCacheControl("max-age=86400"); // 24시간 캐싱

            // 이미지 데이터와 헤더 반환
            return ResponseEntity
                    .ok()
                    .headers(headers)
                    .body(response.getBody());

        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }
}

