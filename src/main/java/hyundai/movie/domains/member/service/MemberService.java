package hyundai.movie.domains.member.service;

import hyundai.movie.domains.member.api.response.MemberInfoResponse;
import hyundai.movie.domains.member.api.response.NicknameUpdateResponse;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.global.annotation.CheckActiveUser;
import jakarta.transaction.Transactional;
import java.util.List;
import java.util.Random;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Slf4j
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
                .nickname(generateRandomNickname())
                .profile(kakaoMemberInfo.getProfileImageUrl())
                .providerId(kakaoMemberInfo.getId().toString())
                .isActive(true)
                .build();

        return memberRepository.save(member);
    }

    @CheckActiveUser
    public MemberInfoResponse getMemberInfo() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        Long memberId = (Long) authentication.getPrincipal();

        log.info("MEMBER ID : " + memberId.toString());

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        // 조회된 Member 객체를 기반으로 MemberInfoResponse를 생성하여 반환
        return MemberInfoResponse.builder()
                .memberId(member.getId())
                .nickname(member.getNickname())
                .profile(member.getProfile())
                .build();
    }

    @CheckActiveUser
    public NicknameUpdateResponse updateNickname(String newNickname) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        // Member 엔티티의 닉네임을 업데이트
        member.updateNickname(newNickname);
        memberRepository.save(member); // 변경된 닉네임 저장

        log.info("MEMBER ID : " + memberId + "의 닉네임이 " + newNickname + "(으)로 변경되었습니다.");

        // 변경된 정보를 담은 NicknameUpdateResponse 객체를 반환
        return NicknameUpdateResponse.builder()
                .memberId(member.getId())
                .nickname(member.getNickname())
                .build();
    }

    public void deactivateMember() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new IllegalArgumentException("회원 정보를 찾을 수 없습니다."));

        member.deactivate();
        memberRepository.save(member);

        log.info("MEMBER ID : " + memberId + "의 계정이 비활성화되었습니다.");
    }

    private String generateRandomNickname() {
        List<String> fruits = List.of("망고", "파인애플", "바나나", "코코넛", "파파야", "구아바", "리치", "망고스틴", "스타푸르트",
                        "용과", "패션프루트", "아보카도");

        List<String> kimchi = List.of("배추김치", "깍두기", "총각김치", "백김치", "동치미", "열무김치", "갓김치", "부추김치", "파김치",
                "오이소박이", "고들빼기김치", "양파김치", "콩나물김치", "미나리김치", "청각김치", "도라지김치", "섞박지",
                "무말랭이김치", "겉절이", "고수김치");


        Random random = new Random();

        int fruitsIndex = random.nextInt(fruits.size());
        int kimchiIndex = random.nextInt(kimchi.size());

        return fruits.get(fruitsIndex) + kimchi.get(kimchiIndex);
    }
}

