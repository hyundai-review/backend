package hyundai.movie.domains.comment.service;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.request.CommentUpdateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.api.response.CommentListResponse;
import hyundai.movie.domains.comment.api.response.CommentUpdateResponse;
import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.comment.dto.CommentDto;
import hyundai.movie.domains.comment.exception.CommentNotFoundException;
import hyundai.movie.domains.comment.repository.CommentRepository;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.exception.ReviewNotFoundException;
import hyundai.movie.domains.review.repository.ReviewRepository;
import hyundai.movie.helper.CommentTestHelper;
import hyundai.movie.helper.MemberTestHelper;
import hyundai.movie.helper.ReviewTestHelper;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.util.ReflectionTestUtils;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
public class CommentServiceTest {

    @InjectMocks
    private CommentService commentService;

    @Mock
    private CommentRepository commentRepository;

    @Mock
    private MemberRepository memberRepository;

    @Mock
    private ReviewRepository reviewRepository;

    @Mock
    private Authentication authentication;

    @Mock
    private SecurityContext securityContext;

    private Member testMember;
    private Review testReview;
    private Comment testComment;

    @BeforeEach
    void setUp() {
        SecurityContextHolder.setContext(securityContext);
        when(securityContext.getAuthentication()).thenReturn(authentication);

        testMember = MemberTestHelper.createMemberWithId(1L);
        testReview = ReviewTestHelper.createReviewWithId(1L, testMember, null, 5, "Test Review", false);
        testComment = CommentTestHelper.createCommentWithIdAndTimestamp(1L, testMember, testReview, "Test Comment");
    }

    @Nested
    @DisplayName("답글 작성")
    class CreateCommentTest {
        @Test
        @DisplayName("정상적인 답글 작성")
        void createComment_success() {
            // Given
            Long memberId = 1L;
            Long reviewId = 1L;
            LocalDateTime now = LocalDateTime.now();

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(testMember));
            when(reviewRepository.findById(reviewId)).thenReturn(Optional.of(testReview));

            // save 메서드가 동일한 객체를 수정하여 반환하도록 변경
            when(commentRepository.save(any(Comment.class))).thenAnswer(invocation -> {
                Comment comment = invocation.getArgument(0);
                ReflectionTestUtils.setField(comment, "id", 1L);
                ReflectionTestUtils.setField(comment, "createdAt", now);
                return comment;  // 수정된 동일한 객체를 반환
            });

            CommentCreateRequest request = CommentTestHelper.createCommentCreateRequest("Test Comment");

            // When
            CommentCreateResponse response = commentService.createComment(reviewId, request);

            // Then
            assertNotNull(response);
            assertEquals(1L, response.getCommentId());
            assertEquals("Test Comment", response.getContent());
            assertEquals(now.toString(), response.getCreatedAt());
            verify(commentRepository).save(any(Comment.class));
        }

        // 이전에 작성된 실패 케이스들은 그대로 유지
        @Test
        @DisplayName("리뷰가 존재하지 않는 경우")
        void createComment_reviewNotFound() {
            // Given
            Long memberId = 1L;
            Long reviewId = 999L;

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(MemberTestHelper.createMemberWithId(memberId)));
            when(reviewRepository.findById(reviewId)).thenReturn(Optional.empty());

            // When
            CommentCreateRequest request = CommentTestHelper.createCommentCreateRequest("This is a comment");

            // Then
            assertThrows(ReviewNotFoundException.class, () -> commentService.createComment(reviewId, request));
        }

        @Test
        @DisplayName("회원이 존재하지 않는 경우")
        void createComment_memberNotFound() {
            // Given
            Long memberId = 999L;
            Long reviewId = 1L;

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.empty());

            // When
            CommentCreateRequest request = CommentTestHelper.createCommentCreateRequest("This is a comment");

            // Then
            assertThrows(MemberNotFoundException.class, () -> commentService.createComment(reviewId, request));
        }
    }

    @Nested
    @DisplayName("답글 수정")
    class UpdateCommentTest {
        @Test
        @DisplayName("정상적인 답글 수정")
        void updateComment_success() {
            // Given
            Long memberId = 1L;
            LocalDateTime now = LocalDateTime.now();

            when(authentication.getPrincipal()).thenReturn(memberId);

            // testComment에 updatedAt 설정
            Comment comment = testComment;
            ReflectionTestUtils.setField(comment, "updatedAt", now);
            when(commentRepository.findById(1L)).thenReturn(Optional.of(comment));

            CommentUpdateRequest request = CommentTestHelper.createCommentUpdateRequest("Updated Comment");

            // When
            CommentUpdateResponse response = commentService.updateComment(1L, request);

            // Then
            assertNotNull(response);
            assertEquals("Updated Comment", response.getContent());
            assertEquals(now.format(DateTimeFormatter.ISO_LOCAL_DATE_TIME), response.getUpdatedAt());
            verify(commentRepository).findById(1L);
        }

        @Test
        @DisplayName("존재하지 않는 답글 수정 시도")
        void updateComment_commentNotFound() {
            // Given
            when(authentication.getPrincipal()).thenReturn(1L);
            when(commentRepository.findById(999L)).thenReturn(Optional.empty());

            CommentUpdateRequest request = new CommentUpdateRequest();
            ReflectionTestUtils.setField(request, "content", "Updated Comment");

            // Then
            assertThrows(CommentNotFoundException.class,
                    () -> commentService.updateComment(999L, request));
        }

        @Test
        @DisplayName("권한이 없는 사용자의 답글 수정 시도")
        void updateComment_unauthorizedUser() {
            // Given
            when(authentication.getPrincipal()).thenReturn(2L); // 다른 사용자
            when(commentRepository.findById(1L)).thenReturn(Optional.of(testComment));

            CommentUpdateRequest request = new CommentUpdateRequest();
            ReflectionTestUtils.setField(request, "content", "Updated Comment");

            // Then
            assertThrows(IllegalArgumentException.class,
                    () -> commentService.updateComment(1L, request));
        }
    }

    @Nested
    @DisplayName("답글 삭제")
    class DeleteCommentTest {
        @Test
        @DisplayName("정상적인 답글 삭제")
        void deleteComment_success() {
            // Given
            when(authentication.getPrincipal()).thenReturn(1L);
            when(commentRepository.findById(1L)).thenReturn(Optional.of(testComment));

            // When
            assertDoesNotThrow(() -> commentService.deleteComment(1L));

            // Then
            verify(commentRepository).delete(testComment);
        }

        @Test
        @DisplayName("존재하지 않는 답글 삭제 시도")
        void deleteComment_commentNotFound() {
            // Given
            when(authentication.getPrincipal()).thenReturn(1L);
            when(commentRepository.findById(999L)).thenReturn(Optional.empty());

            // Then
            assertThrows(CommentNotFoundException.class,
                    () -> commentService.deleteComment(999L));
        }

        @Test
        @DisplayName("권한이 없는 사용자의 답글 삭제 시도")
        void deleteComment_unauthorizedUser() {
            // Given
            when(authentication.getPrincipal()).thenReturn(2L); // 다른 사용자
            when(commentRepository.findById(1L)).thenReturn(Optional.of(testComment));

            // Then
            assertThrows(IllegalArgumentException.class,
                    () -> commentService.deleteComment(1L));
        }
    }

    @Nested
    @DisplayName("답글 조회")
    class GetCommentsByReviewIdTest {
        @Test
        @DisplayName("정상적인 리뷰 답글 목록 조회")
        void getCommentsByReviewId_success() {
            // Given
            Long memberId = 1L;
            Long reviewId = 1L;
            LocalDateTime now = LocalDateTime.now();
            String formattedDateTime = now.format(DateTimeFormatter.ISO_LOCAL_DATE_TIME);

            // save할 때 사용할 시간을 미리 포맷팅된 형태로 설정
            Comment comment = Comment.builder()
                    .content("Comment 1")
                    .member(testMember)
                    .review(testReview)
                    .build();
            ReflectionTestUtils.setField(comment, "id", 1L);
            ReflectionTestUtils.setField(comment, "createdAt", now);
            ReflectionTestUtils.setField(comment, "updatedAt", now);
            List<Comment> comments = List.of(comment);

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(reviewRepository.findById(reviewId)).thenReturn(Optional.of(testReview));
            when(commentRepository.findByReview(testReview)).thenReturn(comments);

            // When
            CommentListResponse response = commentService.getCommentsByReviewId(reviewId);

            // Then
            assertNotNull(response);
            assertEquals(1, response.getComments().size());

            CommentDto firstComment = response.getComments().get(0);
            assertEquals(1L, firstComment.getCommentId());
            assertEquals("Comment 1", firstComment.getContent());
            assertTrue(firstComment.getIsMine());
            assertEquals(formattedDateTime, firstComment.getCreatedAt());
            assertEquals(formattedDateTime, firstComment.getUpdatedAt());

            // AuthorInfo 검증
            assertNotNull(firstComment.getAuthor());
            assertEquals(testMember.getNickname(), firstComment.getAuthor().getNickname());
            assertEquals(testMember.getProfile(), firstComment.getAuthor().getProfile());

            verify(reviewRepository).findById(reviewId);
            verify(commentRepository).findByReview(testReview);
        }

        @Test
        @DisplayName("존재하지 않는 리뷰의 답글 목록 조회 시도")
        void getCommentsByReviewId_reviewNotFound() {
            // Given
            Long nonExistentReviewId = 999L;
            when(authentication.getPrincipal()).thenReturn(1L);
            when(reviewRepository.findById(nonExistentReviewId)).thenReturn(Optional.empty());

            // Then
            assertThrows(ReviewNotFoundException.class,
                    () -> commentService.getCommentsByReviewId(nonExistentReviewId));
            verify(reviewRepository).findById(nonExistentReviewId);
        }

        @Test
        @DisplayName("댓글이 없는 리뷰의 답글 목록 조회")
        void getCommentsByReviewId_emptyComments() {
            // Given
            Long reviewId = 1L;
            when(authentication.getPrincipal()).thenReturn(1L);
            when(reviewRepository.findById(reviewId)).thenReturn(Optional.of(testReview));
            when(commentRepository.findByReview(testReview)).thenReturn(Collections.emptyList());

            // When
            CommentListResponse response = commentService.getCommentsByReviewId(reviewId);

            // Then
            assertNotNull(response);
            assertTrue(response.getComments().isEmpty());
            verify(reviewRepository).findById(reviewId);
            verify(commentRepository).findByReview(testReview);
        }
    }
}