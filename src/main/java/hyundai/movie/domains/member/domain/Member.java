package hyundai.movie.domains.member.domain;

import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Member extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nickname;
    private String profile;
    private String providerId;
    private Boolean isActive;

    @Builder
    public Member(String nickname, String providerId, String profile, Boolean isActive) {
        this.nickname = nickname;
        this.profile = profile;
        this.providerId = providerId;
        this.isActive = isActive;
    }
}
