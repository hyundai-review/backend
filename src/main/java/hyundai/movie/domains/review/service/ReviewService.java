package hyundai.movie.domains.review.service;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.MovieRepository;
import hyundai.movie.domains.review.api.request.PhotoReviewCreateRequest;
import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.api.response.PhotoReviewCreateResponse;
import hyundai.movie.domains.review.api.response.TextReviewCreateResponse;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.exception.DuplicateReviewException;
import hyundai.movie.domains.review.repository.ReviewRepository;
import hyundai.movie.global.common.s3.S3Service;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Service
@RequiredArgsConstructor
public class ReviewService {
    private final ReviewRepository reviewRepository;
    private final MovieRepository movieRepository;
    private final MemberRepository memberRepository;
    private final S3Service s3Service;

    public TextReviewCreateResponse createReview(Long movieId, TextReviewCreateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();


        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));

        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(() -> new MovieNotFoundException("ID가 " + movieId + "인 영화를 찾을 수 없습니다."));


        if (reviewRepository.existsByMovieAndMember(movie, member)) {
            throw new DuplicateReviewException("이미 이 영화에 대한 리뷰를 작성하셨습니다.");
        }


        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(request.getRating())
                .content(request.getReview())
                .isSpoil(request.getIsSpoil())
                .build();

        Review savedReview = reviewRepository.save(review);

        return TextReviewCreateResponse.from(savedReview);
    }
    public PhotoReviewCreateResponse createPhotoReview(Long movieId, PhotoReviewCreateRequest request) {
        Member member = getAuthenticatedMember();
        Movie movie = getMovieById(movieId);

        if (reviewRepository.existsByMovieAndMember(movie, member)) {
            throw new DuplicateReviewException("이미 이 영화에 대한 리뷰를 작성하셨습니다.");
        }

        String photoCardUrl = uploadPhotoCard(request.getPhotocard(), member.getNickname());

        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(request.getRating())
                .content(request.getContent())
                .isSpoil(request.getIsSpoil())
                .photoCard(photoCardUrl)
                .build();

        Review savedReview = reviewRepository.save(review);
        return PhotoReviewCreateResponse.from(savedReview);
    }

    private Member getAuthenticatedMember() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();
        return memberRepository.findById(memberId)
                .orElseThrow(() -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));
    }

    private Movie getMovieById(Long movieId) {
        return movieRepository.findById(movieId)
                .orElseThrow(() -> new MovieNotFoundException("ID가 " + movieId + "인 영화를 찾을 수 없습니다."));
    }

    private String uploadPhotoCard(MultipartFile photoCard, String nickname) {
        if (photoCard == null || photoCard.isEmpty()) {
            return null;
        }
        try {
            return s3Service.uploadImage(photoCard, nickname);
        } catch (IOException e) {
            throw new RuntimeException("포토카드 파일 업로드 중 오류가 발생했습니다.", e);
        }
    }



}
