package hyundai.movie.domains.comment.api.response;

import hyundai.movie.domains.comment.domain.Comment;
import java.time.format.DateTimeFormatter;
import lombok.Getter;

@Getter
public class CommentUpdateResponse {
    private Long commentId;
    private String content;
    private String updatedAt;

    private CommentUpdateResponse(Long commentId, String content, String updatedAt) {
        this.commentId = commentId;
        this.content = content;
        this.updatedAt = updatedAt;
    }

    public static CommentUpdateResponse from(Comment updateComment) {
        return new CommentUpdateResponse(
                updateComment.getId(),
                updateComment.getContent(),
                updateComment.getUpdatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME)
        );
    }

}
