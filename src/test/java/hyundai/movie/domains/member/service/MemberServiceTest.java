package hyundai.movie.domains.member.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import hyundai.movie.domains.member.api.response.MemberInfoResponse;
import hyundai.movie.domains.member.api.response.NicknameUpdateResponse;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.global.common.s3.S3Service;
import hyundai.movie.helper.MemberTestHelper;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
class MemberServiceTest {

    @InjectMocks
    private MemberService memberService;

    @Mock
    private MemberRepository memberRepository;

    @Mock
    private S3Service s3Service;

    @Mock
    private Authentication authentication;

    @Mock
    private SecurityContext securityContext;

    @BeforeEach
    void setUp() {
        SecurityContextHolder.setContext(securityContext);
        when(securityContext.getAuthentication()).thenReturn(authentication);
    }

    @Test
    @DisplayName("새로운 회원 가입")
    void loginOrRegister_NewMember() {
        // given
        KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
        Member expectedMember = MemberTestHelper.createMemberWithId(1L);

        when(memberRepository.findByProviderId(kakaoInfo.getId().toString())).thenReturn(Optional.empty());
        when(memberRepository.save(any(Member.class))).thenReturn(expectedMember);

        // when
        Member result = memberService.loginOrRegister(kakaoInfo);

        // then
        assertThat(result).isNotNull();
        assertThat(result.getId()).isEqualTo(expectedMember.getId());
        verify(memberRepository).save(any(Member.class));
    }

    @Test
    @DisplayName("기존 회원 로그인")
    void loginOrRegister_ExistingMember() {
        // given
        KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
        Member existingMember = MemberTestHelper.createMemberWithId(1L);

        when(memberRepository.findByProviderId(kakaoInfo.getId().toString()))
                .thenReturn(Optional.of(existingMember));

        // when
        Member result = memberService.loginOrRegister(kakaoInfo);

        // then
        assertThat(result).isNotNull();
        assertThat(result.getId()).isEqualTo(existingMember.getId());
    }

    @Test
    @DisplayName("회원 정보 조회")
    void getMemberInfo() {
        // given
        Long memberId = 1L;
        Member member = MemberTestHelper.createMemberWithId(memberId);

        when(authentication.getPrincipal()).thenReturn(memberId);
        when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));

        // when
        MemberInfoResponse response = memberService.getMemberInfo();

        // then
        assertThat(response.getMemberId()).isEqualTo(memberId);
        assertThat(response.getNickname()).isEqualTo(member.getNickname());
        assertThat(response.getProfile()).isEqualTo(member.getProfile());
    }

    @Test
    @DisplayName("닉네임 업데이트")
    void updateNickname() {
        // given
        Long memberId = 1L;
        String newNickname = "새로운닉네임";
        Member member = MemberTestHelper.createMemberWithId(memberId);

        when(authentication.getPrincipal()).thenReturn(memberId);
        when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));

        // when
        NicknameUpdateResponse response = memberService.updateNickname(newNickname);

        // then
        assertThat(response.getMemberId()).isEqualTo(memberId);
        assertThat(response.getNickname()).isEqualTo(newNickname);
        verify(memberRepository).save(any(Member.class));
    }

    @Test
    @DisplayName("프로필 이미지 업데이트")
    void updateProfileImage() throws Exception {
        // given
        Long memberId = 1L;
        Member member = MemberTestHelper.createMemberWithId(memberId);
        String expectedImageUrl = "http://new-profile-image.jpg";
        MockMultipartFile file = new MockMultipartFile(
                "file", "test.jpg", "image/jpeg", "test image content".getBytes()
        );

        when(authentication.getPrincipal()).thenReturn(memberId);
        when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
        when(s3Service.uploadImage(any(), any())).thenReturn(expectedImageUrl);

        // when
        String result = memberService.updateProfileImage(file);

        // then
        assertThat(result).isEqualTo(expectedImageUrl);
        verify(memberRepository).save(any(Member.class));
    }

    @Test
    @DisplayName("회원 탈퇴 처리")
    void deactivateMember() {
        // given
        Long memberId = 1L;
        Member member = MemberTestHelper.createMemberWithId(memberId);

        when(authentication.getPrincipal()).thenReturn(memberId);
        when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));

        // when
        memberService.deactivateMember();

        // then
        assertThat(member.getIsActive()).isFalse();
        verify(memberRepository).save(member);
    }

    @Test
    @DisplayName("존재하지 않는 회원 조회 시 예외 발생")
    void getMemberInfo_NotFound() {
        // given
        Long nonExistentMemberId = 999L;
        when(authentication.getPrincipal()).thenReturn(nonExistentMemberId);
        when(memberRepository.findById(nonExistentMemberId)).thenReturn(Optional.empty());

        // when & then
        assertThatThrownBy(() -> memberService.getMemberInfo())
                .isInstanceOf(MemberNotFoundException.class)
                .hasMessage("회원 정보를 찾을 수 없습니다.");
    }
}