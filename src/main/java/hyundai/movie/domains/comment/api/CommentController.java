package hyundai.movie.domains.comment.api;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/comments")
public class CommentController {
    private final CommentService commentService;

    // 답글 쓰기
    @PostMapping("/{reviewId}")
    public ResponseEntity<CommentCreateResponse> createComment(
            @PathVariable Long reviewId,
            @RequestBody CommentCreateRequest request) {
        CommentCreateResponse response = commentService.createComment(reviewId, request);
        return ResponseEntity.ok(response);
    }

    // 답글 수정


}
