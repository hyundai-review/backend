package hyundai.movie.helper;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.domain.Comment;
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
        ReflectionTestUtils.setField(comment, "createdAt", LocalDateTime.now());  // 이 부분이 중요합니다

        return comment;
    }

    // ID와 createdAt이 포함된 Comment 생성
    public static Comment createCommentWithIdAndTimestamp(Long id, Member member, Review review, String content) {
        Comment comment = createComment(member, review, content);

        // ID 설정
        ReflectionTestUtils.setField(comment, "id", id);

        // createdAt 설정
        ReflectionTestUtils.setField(comment, "createdAt", LocalDateTime.now());

        return comment;
    }

    // 여러 개의 Comment 생성 (createdAt 포함)
    public static List<Comment> createComments(Member member, Review review, int count) {
        return IntStream.range(1, count + 1)
                .mapToObj(i -> createCommentWithIdAndTimestamp((long) i, member, review, "Comment " + i))
                .collect(Collectors.toList());
    }

    // DTO 생성 메서드 추가
    // CommentCreateRequest 생성
    public static CommentCreateRequest createCommentCreateRequest(String content) {
        CommentCreateRequest request = new CommentCreateRequest();
        ReflectionTestUtils.setField(request, "content", content);
        return request;
    }

}
