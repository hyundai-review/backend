package hyundai.movie.domains.member.service;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.never;
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
import java.io.IOException;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
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

    @Nested
    @DisplayName("회원 가입/로그인 테스트")
    class LoginOrRegisterTest {

        @Test
        @DisplayName("새로운 회원 가입")
        void loginOrRegister_NewMember() {
            // given
            KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
            Member expectedMember = MemberTestHelper.createMemberWithId(1L);

            when(memberRepository.findByProviderId(kakaoInfo.getId().toString())).thenReturn(
                    Optional.empty());
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
        @DisplayName("비활성화된 회원 로그인")
        void loginOrRegister_DeactivatedMember() {
            // given
            KakaoMemberResponseDto kakaoInfo = MemberTestHelper.createKakaoMemberResponseDto();
            Member deactivatedMember = MemberTestHelper.createInactiveMember();

            when(memberRepository.findByProviderId(kakaoInfo.getId().toString()))
                    .thenReturn(Optional.of(deactivatedMember));

            // when
            Member result = memberService.loginOrRegister(kakaoInfo);

            // then
            assertThat(result).isNotNull();
            assertThat(result.getId()).isEqualTo(deactivatedMember.getId());
            assertThat(result.getIsActive()).isTrue();
            verify(memberRepository).save(any(Member.class));
        }

    }

    @Nested
    @DisplayName("회원 정보 조회 테스트")
    class GetMemberInfoTest {

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

    @Nested
    @DisplayName("유저 닉네임 업데이트 테스트")
    class UpdateNicknameTest {

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
        @DisplayName("존재하지 않는 회원 닉네임 변경 시 예외 발생")
        void updateNickname_MemberNotFound() {
            // given
            Long memberId = 999L;
            String newNickname = "새로운닉네임";

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.empty());

            // when & then
            assertThatThrownBy(() -> memberService.updateNickname(newNickname))
                    .isInstanceOf(MemberNotFoundException.class)
                    .hasMessage("회원 정보를 찾을 수 없습니다.");
        }

    }

    @Nested
    @DisplayName("유저 프로필 업데이트 테스트")
    class UpdateProfileImageTest {

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
        @DisplayName("존재하지 않는 회원 프로필 변경 시 예외 발생")
        void updateProfileImage_MemberNotFound() throws Exception {
            // given
            Long memberId = 999L;
            String expectedImageUrl = "http://new-profile-image.jpg";
            MockMultipartFile file = new MockMultipartFile(
                    "file", "test.jpg", "image/jpeg", "test image content".getBytes()
            );

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.empty());
            when(s3Service.uploadImage(any(), any())).thenReturn(expectedImageUrl);

            // when & then
            assertThatThrownBy(() -> memberService.updateProfileImage(file))
                    .isInstanceOf(MemberNotFoundException.class)
                    .hasMessage("회원 정보를 찾을 수 없습니다.");

            // then
            verify(s3Service, never()).uploadImage(any(), any());
            verify(memberRepository, never()).save(any(Member.class));
        }

        @Test
        @DisplayName("S3 업로드 실패 시 예외 처리")
        void updateProfileImage_UploadFailure() throws Exception {
            // given
            Long memberId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            MockMultipartFile file = new MockMultipartFile(
                    "file", "test.jpg", "image/jpeg", "test content".getBytes()
            );

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(s3Service.uploadImage(any(), any())).thenThrow(new IOException("Upload failed"));

            // when & then
            assertThatThrownBy(() -> memberService.updateProfileImage(file))
                    .isInstanceOf(RuntimeException.class)
                    .hasMessage("프로필 이미지 업로드 중 오류가 발생했습니다.")
                    .hasCauseInstanceOf(IOException.class);

            // DB 저장이 실행되지 않았는지 확인
            verify(memberRepository, never()).save(any());
            // 회원의 프로필이 변경되지 않았는지 확인
            assertThat(member.getProfile()).isNotEqualTo("http://new-profile-image.jpg");
        }

        @Test
        @DisplayName("빈 파일 업로드 시도")
        void updateProfileImage_EmptyFile() throws Exception {
            // given
            Long memberId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            MockMultipartFile emptyFile = new MockMultipartFile(
                    "file", "", "image/jpeg", new byte[0]
            );

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));

            // when & then
            assertThatThrownBy(() -> memberService.updateProfileImage(emptyFile))
                    .isInstanceOf(IllegalArgumentException.class)
                    .hasMessage("업로드할 파일이 비어있습니다.");

            // S3 업로드가 시도되지 않았는지 확인
            verify(s3Service, never()).uploadImage(any(), any());
            // DB 저장이 실행되지 않았는지 확인
            verify(memberRepository, never()).save(any());
        }

        @Test
        @DisplayName("잘못된 파일 형식 업로드 시도")
        void updateProfileImage_InvalidFileType() throws Exception {
            // given
            Long memberId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            MockMultipartFile textFile = new MockMultipartFile(
                    "file", "test.txt", "text/plain", "test content".getBytes()
            );

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));

            // when & then
            assertThatThrownBy(() -> memberService.updateProfileImage(textFile))
                    .isInstanceOf(IllegalArgumentException.class)
                    .hasMessage("이미지 파일만 업로드 가능합니다.");

            verify(s3Service, never()).uploadImage(any(), any());
            verify(memberRepository, never()).save(any());
        }

        @Test
        @DisplayName("이미지 파일이 성공적으로 업로드되면 기존 프로필 URL이 새로운 URL로 변경되는지 확인")
        void updateProfileImage_UrlUpdate() throws Exception {
            // given
            Long memberId = 1L;
            String oldProfileUrl = "http://old-profile-image.jpg";
            Member member = MemberTestHelper.createMemberWithId(memberId);
            member.updateProfile(oldProfileUrl);  // 기존 프로필 URL 설정

            String newProfileUrl = "http://new-profile-image.jpg";
            MockMultipartFile file = new MockMultipartFile(
                    "file", "test.jpg", "image/jpeg", "test content".getBytes()
            );

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(s3Service.uploadImage(any(), any())).thenReturn(newProfileUrl);

            // when
            String result = memberService.updateProfileImage(file);

            // then
            assertThat(result).isEqualTo(newProfileUrl);
            assertThat(member.getProfile()).isEqualTo(newProfileUrl);
            assertThat(member.getProfile()).isNotEqualTo(oldProfileUrl);
            verify(memberRepository).save(member);
        }

    }

    @Nested
    @DisplayName("유저 정보 비활성 테스트")
    class DeactivateMemberTest {

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
        @DisplayName("존재하지 않는 회원 탈퇴 시 예외 발생")
        void deactivateMember_NotFound() {
            // given
            Long memberId = 999L;

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.empty());

            // when & then
            assertThatThrownBy(() -> memberService.deactivateMember())
                    .isInstanceOf(MemberNotFoundException.class)
                    .hasMessage("회원 정보를 찾을 수 없습니다.");
        }

    }
}