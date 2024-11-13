package hyundai.movie.domains.member.service;

import java.io.IOException;
import java.net.URL;
import java.nio.file.Paths;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;
import software.amazon.awssdk.services.s3.model.PutObjectResponse;
import software.amazon.awssdk.services.s3.model.S3Exception;
import software.amazon.awssdk.services.s3.model.GetUrlRequest;
import software.amazon.awssdk.core.sync.RequestBody;

@Slf4j
@Service
public class S3Service {

    private final S3Client s3Client;

    @Value("${cloud.aws.s3.bucket}")
    private String bucketName;

    public S3Service(S3Client s3Client) {
        this.s3Client = s3Client;
    }

    public String uploadProfileImage(MultipartFile file, String nickname) throws IOException {
        // 사용자별 디렉토리와 파일명을 사용하여 S3 키 생성
        String key = Paths.get("profile-images", nickname, file.getOriginalFilename()).toString();

        try {
            // S3에 파일 업로드 요청 (ACL 설정 제거)
            PutObjectRequest putObjectRequest = PutObjectRequest.builder()
                    .bucket(bucketName)
                    .key(key)
                    .contentType(file.getContentType())
                    .build();

            // 파일 업로드 수행
            PutObjectResponse response = s3Client.putObject(putObjectRequest, RequestBody.fromBytes(file.getBytes()));

            // 성공적으로 업로드된 경우 URL 반환
            if (response.sdkHttpResponse().isSuccessful()) {
                return getFileUrl(key);
            } else {
                throw new RuntimeException("파일 업로드에 실패했습니다.");
            }
        } catch (S3Exception e) {
            log.error("S3 업로드 중 오류가 발생했습니다: {}", e.awsErrorDetails().errorMessage()); // 상세 오류 메시지 로깅
            throw new RuntimeException("S3 업로드 중 오류가 발생했습니다.", e);
        }
    }

    // 업로드된 파일의 URL을 가져오는 메서드
    private String getFileUrl(String key) {
        URL url = s3Client.utilities().getUrl(GetUrlRequest.builder()
                .bucket(bucketName)
                .key(key)
                .build());
        return url.toString();
    }
}
