package hyundai.movie.global.aspect;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

@Slf4j
@Aspect
@Component
@RequiredArgsConstructor
public class ActiveUserAspect {
    private final MemberRepository memberRepository;

    @Before("@annotation(hyundai.movie.global.annotation.CheckActiveUser)")
    public void checkActiveUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new MemberNotFoundException("회원 정보를 찾을 수 없습니다."));

        if (!member.getIsActive()) {
            throw new MemberNotFoundException("탈퇴한 사용자는 이 작업을 수행할 수 없습니다.");
        }
    }

}
