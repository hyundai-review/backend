package hyundai.movie.domains.member.api.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class MemberInfoResponse {
    private final Long memberId;
    private final String nickname;
    private final String profile;

}
