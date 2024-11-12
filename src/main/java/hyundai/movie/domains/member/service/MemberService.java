package hyundai.movie.domains.member.service;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.repository.MemberRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public Member loginOrRegister(KakaoMemberResponseDto kakaoMemberInfo) {
        return memberRepository.findByProviderId(kakaoMemberInfo.getId().toString())
                .orElseGet(() -> registerMember(kakaoMemberInfo));
    }

    private Member registerMember(KakaoMemberResponseDto kakaoMemberInfo) {
        Member member = Member.builder()
                //todo: 닉네임 랜덤하게 부여하기
                .nickname(kakaoMemberInfo.getNickname())
                .profile(kakaoMemberInfo.getProfileImageUrl())
                .providerId(kakaoMemberInfo.getId().toString())
                .isActive(true)
                .build();

        return memberRepository.save(member);
    }
}
