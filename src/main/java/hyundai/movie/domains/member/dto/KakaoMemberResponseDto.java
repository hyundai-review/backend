package hyundai.movie.domains.member.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class KakaoMemberResponseDto {
    private Long id;

    @JsonProperty("properties")
    private Properties properties;

    @Getter
    @NoArgsConstructor
    public static class Properties {
        private String nickname;

        @JsonProperty("profile_image")
        private String profileImageUrl;
    }

    // 편의 메서드 추가
    public String getNickname() {
        return properties != null ? properties.getNickname() : null;
    }

    public String getProfileImageUrl() {
        return properties != null ? properties.getProfileImageUrl() : null;
    }
}
