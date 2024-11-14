package hyundai.movie.domains.review.service;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.repository.MovieRepository;
import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.api.response.TextReviewCreateResponse;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.repository.ReviewRepository;
import java.time.format.DateTimeFormatter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final MovieRepository movieRepository;
    private final MemberRepository memberRepository;

    public TextReviewCreateResponse createReview(Long movieId, TextReviewCreateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();


        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));

        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new MemberNotFoundException("ID가 " + movieId + "인 영화를 찾을 수 없습니다."));


        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(request.getRating())
                .content(request.getReview())
                .isSpoil(request.getIsSpoil())
                .build();

        Review savedReview = reviewRepository.save(review);

        return TextReviewCreateResponse.builder()
                .reviewId(savedReview.getId())
                .rating(savedReview.getRating())
                .content(savedReview.getContent())
                .isSpoil(savedReview.getIsSpoil())
                .createdAt(savedReview.getCreatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME))
                .updatedAt(savedReview.getUpdatedAt().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME))
                .build();
    }


}
