package hyundai.movie.domains.comment.service;

import hyundai.movie.domains.comment.api.request.CommentCreateRequest;
import hyundai.movie.domains.comment.api.response.CommentCreateResponse;
import hyundai.movie.domains.comment.domain.Comment;
import hyundai.movie.domains.comment.repository.CommentRepository;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.exception.ReviewNotFoundException;
import hyundai.movie.domains.review.repository.ReviewRepository;
import jakarta.transaction.Transactional;
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



}
