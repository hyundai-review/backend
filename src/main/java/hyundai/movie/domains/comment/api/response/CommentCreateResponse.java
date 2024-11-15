package hyundai.movie.domains.comment.api.response;

import hyundai.movie.domains.comment.domain.Comment;
import lombok.Getter;


@Getter
public class CommentCreateResponse {
    private Long commentId;
    private String content;
    private String createdAt;

    private CommentCreateResponse(Long commentId, String content, String createdAt) {
        this.commentId = commentId;
        this.content = content;
        this.createdAt = createdAt;
    }

    public static CommentCreateResponse from(Comment comment) {
        return new CommentCreateResponse(
                comment.getId(),
                comment.getContent(),
                comment.getCreatedAt().toString()
        );
    }

}
