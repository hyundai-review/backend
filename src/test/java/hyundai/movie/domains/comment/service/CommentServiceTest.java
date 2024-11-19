package hyundai.movie.domains.comment.service;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.comment.repository.CommentRepository;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.repository.ReviewRepository;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.review.exception.ReviewNotFoundException;
import hyundai.movie.helper.CommentTestHelper;
import hyundai.movie.helper.MemberTestHelper;
import hyundai.movie.helper.ReviewTestHelper;
import java.time.LocalDateTime;
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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.test.util.ReflectionTestUtils;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
public class CommentServiceTest {

    private static final Logger log = LoggerFactory.getLogger(CommentServiceTest.class);
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

    @BeforeEach
    void setUp() {
        SecurityContextHolder.setContext(securityContext);
        when(securityContext.getAuthentication()).thenReturn(authentication);
    }

    @Nested
    @DisplayName("답글 작성")
    class CreateCommentTest {

        @Test
        @DisplayName("정상적인 답글 작성")
        void createComment_success_withMockData() {
            // Given
            Long memberId = 1L;
            Long reviewId = 1L;
            LocalDateTime now = LocalDateTime.now();

            Member member = MemberTestHelper.createMemberWithId(memberId);
            Review review = ReviewTestHelper.createReviewWithId(reviewId, member, null, 5, "Test Review", false);

            when(authentication.getPrincipal()).thenReturn(memberId);
            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(reviewRepository.findById(reviewId)).thenReturn(Optional.of(review));

            // save 메서드가 동일한 객체를 수정하여 반환하도록 변경
            when(commentRepository.save(any(Comment.class))).thenAnswer(invocation -> {
                Comment comment = invocation.getArgument(0);
                ReflectionTestUtils.setField(comment, "id", 1L);
                ReflectionTestUtils.setField(comment, "createdAt", now);
                return comment;  // 수정된 동일한 객체를 반환
            });

            // When
            CommentCreateRequest request = CommentTestHelper.createCommentCreateRequest("This is a test comment");
            CommentCreateResponse response = commentService.createComment(reviewId, request);

            // Then
            assertNotNull(response);
            assertEquals(1L, response.getCommentId());
            assertEquals("This is a test comment", response.getContent());
            assertEquals(now.toString(), response.getCreatedAt());
        }


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
}
