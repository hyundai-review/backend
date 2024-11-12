package hyundai.movie.domains.member.api.response;

import com.fasterxml.jackson.annotation.JsonIgnore;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.global.auth.token.AuthTokens;
import lombok.Builder;
import lombok.Getter;

@Getter
public class MemberLoginResponse {
    private final Long memberId;
    private final String nickname;
    private final String profile;
    private final String accessToken;
    @JsonIgnore
    private final String refreshToken;

    @Builder
    private MemberLoginResponse(Long memberId, String profile, String nickname, String accessToken, String refreshToken) {
        this.memberId = memberId;
        this.nickname = nickname;
        this.profile = profile;
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
    }

    public static MemberLoginResponse of(Member member, AuthTokens authTokens) {
        return MemberLoginResponse.builder()
                .memberId(member.getId())
                .nickname(member.getNickname())
                .profile(member.getProfile())
                .accessToken(authTokens.getAccessToken())
                .refreshToken(authTokens.getRefreshToken())
                .build();
    }
}
