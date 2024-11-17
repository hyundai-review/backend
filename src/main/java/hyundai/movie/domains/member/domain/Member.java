package hyundai.movie.domains.member.domain;

import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
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

    @Column(unique = true)
    private String providerId;

    private Boolean isActive;

    // 벡터 필드 추가
    @Column(columnDefinition = "TEXT")
    private String genreVector;

    @Column(columnDefinition = "LONGTEXT")
    private String actorVector;

    @Column(columnDefinition = "LONGTEXT")
    private String directorVector;

    @Column(columnDefinition = "LONGTEXT")
    private String lastViewTimes;

    @Builder
    public Member(String nickname, String providerId, String profile, Boolean isActive) {
        this.nickname = nickname;
        this.profile = profile;
        this.providerId = providerId;
        this.isActive = isActive;
        initVectors();
    }

    @PrePersist
    private void initVectors() {
        this.genreVector = "{}";
        this.actorVector = "{}";
        this.directorVector = "{}";
        this.lastViewTimes = "{}";
    }

    // 닉네임 업데이트 메서드
    public void updateNickname(String newNickname) {
        this.nickname = newNickname;
    }

    // 회원 탈퇴 (isActive = false로 바꿔줌)
    public void deactivate() {
        this.isActive = false;
    }

    // 재활성화 처리
    public void reactivate() {
        this.isActive = true;
    }

    // 프로필 이미지 URL을 업데이트하는 세터 메서드 추가
    public void updateProfile(String profile) {
        this.profile = profile;
    }


    // 상세 영화를 본 시점 업데이트
    public void updateLastViewTimes(String newLastViewTimes) {
        this.lastViewTimes = newLastViewTimes;
    }

    // 장르 벡터 업데이트
    public void updateGenreVector(String newGenreVector) {
        this.genreVector = newGenreVector;
    }

    // 배우 벡터 업데이트
    public void updateActorVector(String newActorVector) {
        this.actorVector = newActorVector;
    }

    // 감독 벡터 업데이트
    public void updateDirectorVector(String newDirectorVector) {
        this.directorVector = newDirectorVector;
    }
}
