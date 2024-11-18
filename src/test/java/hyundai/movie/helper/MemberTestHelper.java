package hyundai.movie.helper;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.dto.KakaoTokenResponseDto;
import org.springframework.test.util.ReflectionTestUtils;

public class MemberTestHelper {

    // 기본 Member 생성
    public static Member createMember() {
        return Member.builder()
                .nickname("망고김치")
                .providerId("12345")
                .profile("http://test-profile.jpg")
                .isActive(true)
                .build();
    }

    // ID가 포함된 Member 생성
    public static Member createMemberWithId(Long id) {
        Member member = createMember();
        ReflectionTestUtils.setField(member, "id", id);
        return member;
    }

    // 커스텀 Member 생성
    public static Member createCustomMember(String nickname, String providerId, String profile, Boolean isActive) {
        return Member.builder()
                .nickname(nickname)
                .providerId(providerId)
                .profile(profile)
                .isActive(isActive)
                .build();
    }

    // ID가 포함된 커스텀 Member 생성
    public static Member createCustomMemberWithId(Long id, String nickname, String providerId, String profile, Boolean isActive) {
        Member member = createCustomMember(nickname, providerId, profile, isActive);
        ReflectionTestUtils.setField(member, "id", id);
        return member;
    }

    // KakaoTokenResponseDto 생성
    public static KakaoTokenResponseDto createKakaoTokenResponseDto() {
        KakaoTokenResponseDto dto = new KakaoTokenResponseDto();
        ReflectionTestUtils.setField(dto, "accessToken", "test_access_token");

        return dto;
    }

    // KakaoMemberResponseDto 생성
    public static KakaoMemberResponseDto createKakaoMemberResponseDto() {
        KakaoMemberResponseDto dto = new KakaoMemberResponseDto();
        ReflectionTestUtils.setField(dto, "id", 12345L);

        KakaoMemberResponseDto.Properties properties = new KakaoMemberResponseDto.Properties();
        ReflectionTestUtils.setField(properties, "nickname", "카카오테스트");
        ReflectionTestUtils.setField(properties, "profileImageUrl", "http://test-profile.jpg");

        ReflectionTestUtils.setField(dto, "properties", properties);
        return dto;
    }

    // 비활성화된 Member 생성
    public static Member createInactiveMember() {
        return Member.builder()
                .nickname("비활성사용자")
                .providerId("kakao_99999")
                .profile("http://inactive-profile.jpg")
                .isActive(false)
                .build();
    }

    // ID가 포함된 비활성화된 Member 생성
    public static Member createInactiveMemberWithId(Long id) {
        Member member = createInactiveMember();
        ReflectionTestUtils.setField(member, "id", id);
        return member;
    }
}