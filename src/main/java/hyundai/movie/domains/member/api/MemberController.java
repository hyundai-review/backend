package hyundai.movie.domains.member.api;

import hyundai.movie.domains.member.api.request.NickNameUpdateRequest;
import hyundai.movie.domains.member.api.response.MemberInfoResponse;
import hyundai.movie.domains.member.api.response.NicknameUpdateResponse;
import hyundai.movie.domains.member.service.MemberService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor
@RequestMapping("/members")
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/info")
    public MemberInfoResponse getMyInfo() {
        return memberService.getMemberInfo();
    }

    @PutMapping("/nickname")
    public ResponseEntity<NicknameUpdateResponse> updateNickname(@Valid @RequestBody NickNameUpdateRequest request) {
        NicknameUpdateResponse response = memberService.updateNickname(request.getNickname());
        return ResponseEntity.ok(response);
    }
    @PutMapping("/profile")
    public ResponseEntity<String> updateProfileImage(@RequestParam("file") MultipartFile file) {
        String imageUrl = memberService.updateProfileImage(file);
        return ResponseEntity.ok(imageUrl); // 업로드된 이미지 URL 반환
    }



    @PutMapping("/delete")
    public ResponseEntity<Void> deleteMember() {
        memberService.deactivateMember();
        return ResponseEntity.ok().build();
    }




}
