package hyundai.movie.domains.comment.api;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.request.CommentUpdateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.api.response.CommentListResponse;
import hyundai.movie.domains.comment.api.response.CommentUpdateResponse;
import hyundai.movie.domains.comment.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
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
    @PutMapping("/{commentId}")
    public ResponseEntity<CommentUpdateResponse> updateComment(
            @PathVariable Long commentId,
            @RequestBody CommentUpdateRequest request) {
        CommentUpdateResponse response = commentService.updateComment(commentId, request);
        return ResponseEntity.ok(response);
    }

    // 답글 삭제
    @DeleteMapping("/{commentId}")
    public ResponseEntity<?> deleteComment(
            @PathVariable Long commentId) {
        commentService.deleteComment(commentId);
        return ResponseEntity.ok().build(); // 상태 코드 200 반환
    }

    // 답글 조회
    @GetMapping("/{reviewId}")
    public ResponseEntity<CommentListResponse> getCommentsByReviewId(@PathVariable Long reviewId) {
        CommentListResponse response = commentService.getCommentsByReviewId(reviewId);
        return ResponseEntity.ok(response);
    }




}
