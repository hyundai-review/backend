package hyundai.movie.domains.member.service;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.KakaoMemberResponseDto;
import hyundai.movie.domains.member.repository.MemberRepository;
import jakarta.transaction.Transactional;
import java.util.List;
import java.util.Random;
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
                .nickname(generateRandomNickname())
                .profile(kakaoMemberInfo.getProfileImageUrl())
                .providerId(kakaoMemberInfo.getId().toString())
                .isActive(true)
                .build();

        return memberRepository.save(member);
    }

    private String generateRandomNickname() {
        List<String> fruits = List.of("망고", "파인애플", "바나나", "코코넛", "파파야", "구아바", "리치", "망고스틴", "스타푸르트",
                        "용과", "패션프루트", "아보카도");

        List<String> kimchi = List.of("배추김치", "깍두기", "총각김치", "백김치", "동치미", "열무김치", "갓김치", "부추김치", "파김치",
                "오이소박이", "고들빼기김치", "양파김치", "콩나물김치", "갓물김치", "청각김치", "도라지김치", "미나리김치",
                "무말랭이김치", "호박김치", "고수김치");


        Random random = new Random();

        int fruitsIndex = random.nextInt(fruits.size());
        int kimchiIndex = random.nextInt(kimchi.size());

        return fruits.get(fruitsIndex) + kimchi.get(kimchiIndex);
    }
}
