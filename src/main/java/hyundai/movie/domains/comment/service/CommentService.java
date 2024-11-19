package hyundai.movie.domains.comment.service;

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
import jakarta.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CommentService {
    private final CommentRepository commentRepository;
    private final ReviewRepository reviewRepository;
    private final MemberRepository memberRepository;

    @Transactional
    public CommentCreateResponse createComment(Long reviewId, CommentCreateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new ReviewNotFoundException("ID가 " + reviewId + "인 리뷰를 찾을 수 없습니다."));

        Comment comment = Comment.builder()
                .content(request.getContent())
                .member(member)
                .review(review)
                .build();
        commentRepository.save(comment);

        return CommentCreateResponse.from(comment);
    }

    @Transactional
    public CommentUpdateResponse updateComment(Long commentId, CommentUpdateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new CommentNotFoundException("ID가 " + commentId + "인 댓글을 찾을 수 없습니다."));

        if (!comment.getMember().getId().equals(memberId)) {
            throw new IllegalArgumentException("본인만 댓글을 수정할 수 있습니다.");
        }

        comment.updateContent(request.getContent());
        return CommentUpdateResponse.from(comment);
    }

    @Transactional
    public void deleteComment(Long commentId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new CommentNotFoundException("ID가 " + commentId + "인 댓글을 찾을 수 없습니다."));

        // 삭제 권한 확인
        if (!comment.getMember().getId().equals(memberId)) {
            throw new IllegalArgumentException("본인만 댓글을 삭제할 수 있습니다.");
        }

        commentRepository.delete(comment);
    }

    // 답글 조회
    @Transactional
    public CommentListResponse getCommentsByReviewId(Long reviewId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new ReviewNotFoundException("ID가 " + reviewId + "인 리뷰를 찾을 수 없습니다."));

        List<CommentDto> comments = commentRepository.findByReview(review).stream()
                .map(comment -> CommentDto.of(comment, memberId))
                .collect(Collectors.toList());

        return new CommentListResponse(comments);
    }



}
