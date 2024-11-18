package hyundai.movie.domains.comment.dto;

import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.member.domain.Member;
import java.time.format.DateTimeFormatter;
import java.util.Objects;
import lombok.Getter;

@Getter
public class CommentDto {
    private final Long commentId;
    private final String content;
    private final AuthorInfo author;
    private final Boolean isMine;
    private final String createdAt;
    private final String updatedAt;

    private CommentDto(Long commentId, String content, AuthorInfo author, Boolean isMine, String createdAt, String updatedAt) {
        this.commentId = commentId;
        this.content = content;
        this.author = author;
        this.isMine = isMine;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public static CommentDto of(Comment comment, Long memberId) {
        return new CommentDto(
                comment.getId(),
                comment.getContent(),
                AuthorInfo.from(comment.getMember()),
                Objects.equals(comment.getMember().getId(), memberId),
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
