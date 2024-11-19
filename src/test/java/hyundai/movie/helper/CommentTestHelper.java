package hyundai.movie.helper;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.request.CommentUpdateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.comment.dto.CommentDto;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.review.domain.Review;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import org.springframework.test.util.ReflectionTestUtils;

public class CommentTestHelper {
    public static LocalDateTime now = LocalDateTime.now();

    // 기본 Comment 생성
    public static Comment createComment(Member member, Review review, String content) {
        Comment comment = Comment.builder()
                .member(member)
                .review(review)
                .content(content)
                .build();

        // ID와 createdAt 설정
        ReflectionTestUtils.setField(comment, "id", 1L);
        ReflectionTestUtils.setField(comment, "createdAt", now);

        return comment;
    }

    // ID와 createdAt이 포함된 Comment 생성
    public static Comment createCommentWithIdAndTimestamp(Long id, Member member, Review review, String content) {
        Comment comment = createComment(member, review, content);
        ReflectionTestUtils.setField(comment, "id", id);
        ReflectionTestUtils.setField(comment, "createdAt", now);
        return comment;
    }

    // 여러 개의 Comment 생성
    public static List<Comment> createComments(Member member, Review review, int count) {
        return IntStream.range(1, count + 1)
                .mapToObj(i -> createCommentWithIdAndTimestamp(
                        (long) i,
                        member,
                        review,
                        "Comment " + i
                ))
                .collect(Collectors.toList());
    }

    // CommentCreateRequest 생성
    public static CommentCreateRequest createCommentCreateRequest(String content) {
        CommentCreateRequest request = new CommentCreateRequest();
        ReflectionTestUtils.setField(request, "content", content);
        return request;
    }

    // CommentUpdateRequest 생성
    public static CommentUpdateRequest createCommentUpdateRequest(String content) {
        CommentUpdateRequest request = new CommentUpdateRequest();
        ReflectionTestUtils.setField(request, "content", content);
        return request;
    }

    // CommentCreateResponse 생성 (테스트에서 예상 결과값으로 사용)
    public static CommentCreateResponse createCommentCreateResponse(Long id, String content) {
        Comment comment = Comment.builder()
                .content(content)
                .build();
        ReflectionTestUtils.setField(comment, "id", id);
        ReflectionTestUtils.setField(comment, "createdAt", now);
        return CommentCreateResponse.from(comment);
    }

    // 삭제된 Comment 생성
    public static Comment createDeletedComment(Member member, Review review) {
        Comment comment = createComment(member, review, "삭제된 댓글입니다.");
        ReflectionTestUtils.setField(comment, "isDeleted", true);
        return comment;
    }

    // ID가 포함된 삭제된 Comment 생성
    public static Comment createDeletedCommentWithId(Long id, Member member, Review review) {
        Comment comment = createDeletedComment(member, review);
        ReflectionTestUtils.setField(comment, "id", id);
        return comment;
    }

    // 조회
    // createdAt, updatedAt 포함
    public static List<Comment> createCommentsWithTimestamp(Member member, Review review, int count) {
        return IntStream.range(1, count + 1)
                .mapToObj(i -> {
                    Comment comment = Comment.builder()
                            .member(member)
                            .review(review)
                            .content("Comment " + i)
                            .build();
                    ReflectionTestUtils.setField(comment, "id", (long) i);
                    ReflectionTestUtils.setField(comment, "createdAt", now);
                    ReflectionTestUtils.setField(comment, "updatedAt", now);
                    return comment;
                })
                .collect(Collectors.toList());
    }

    // CommentDto 생성
    public static CommentDto createCommentDto(Comment comment, Long currentUserId) {
        return CommentDto.of(comment, currentUserId);
    }

    // 테스트용 CommentDto 목록 생성
    public static List<CommentDto> createCommentDtos(List<Comment> comments, Long currentUserId) {
        return comments.stream()
                .map(comment -> createCommentDto(comment, currentUserId))
                .collect(Collectors.toList());
    }
}