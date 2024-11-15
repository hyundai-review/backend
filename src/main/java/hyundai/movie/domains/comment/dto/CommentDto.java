package hyundai.movie.domains.comment.dto;

import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.member.domain.Member;
import java.time.format.DateTimeFormatter;
import lombok.Getter;

@Getter
public class CommentDto {
    private final Long commentId;
    private final String content;
    private final AuthorInfo author;
    private final String createdAt;
    private final String updatedAt;

    private CommentDto(Long commentId, String content, AuthorInfo author, String createdAt, String updatedAt) {
        this.commentId = commentId;
        this.content = content;
        this.author = author;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public static CommentDto from(Comment comment) {
        return new CommentDto(
                comment.getId(),
                comment.getContent(),
                AuthorInfo.from(comment.getMember()),
                comment.getCreatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME),
                comment.getUpdatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME)
        );
    }


    @Getter
    public static class AuthorInfo {
        private final String profile;
        private final String nickname;

        private AuthorInfo(String profile, String nickname) {
            this.profile = profile;
            this.nickname = nickname;
        }

        public static AuthorInfo from(Member member) {
            return new AuthorInfo(member.getProfile(), member.getNickname());
        }
    }

}
