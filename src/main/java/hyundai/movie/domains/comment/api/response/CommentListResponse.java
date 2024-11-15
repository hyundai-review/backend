package hyundai.movie.domains.comment.api.response;

import hyundai.movie.domains.comment.dto.CommentDto;
import java.util.List;
import lombok.Getter;

@Getter
public class CommentListResponse {
    private final List<CommentDto> comments;

    public CommentListResponse(List<CommentDto> comments) {
        this.comments = comments;
    }

}
