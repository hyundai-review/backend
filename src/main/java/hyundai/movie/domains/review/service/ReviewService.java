package hyundai.movie.domains.review.service;

import hyundai.movie.domains.comment.repository.CommentRepository;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.member.service.MemberVectorService;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.MovieRepository;
import hyundai.movie.domains.movie.service.MovieRecommendationService;
import hyundai.movie.domains.review.api.request.PhotoReviewCreateRequest;
import hyundai.movie.domains.review.api.request.ReviewUpdateRequest;
import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.api.response.MyReviewListResponse;
import hyundai.movie.domains.review.api.response.PhotoReviewCreateResponse;
import hyundai.movie.domains.review.api.response.RecentReviewResponse;
import hyundai.movie.domains.review.api.response.ReviewLikeResponse;
import hyundai.movie.domains.review.api.response.ReviewListResponse;
import hyundai.movie.domains.review.api.response.ReviewUpdateResponse;
import hyundai.movie.domains.review.api.response.TextReviewCreateResponse;
import hyundai.movie.domains.review.domain.Review;
import hyundai.movie.domains.review.domain.ReviewLike;
import hyundai.movie.domains.review.dto.MyReviewDto;
import hyundai.movie.domains.review.dto.RecentReviewDto;
import hyundai.movie.domains.review.dto.ReviewDto;
import hyundai.movie.domains.review.dto.ReviewforMyPageDto;
import hyundai.movie.domains.review.exception.DuplicateReviewException;
import hyundai.movie.domains.review.exception.InvalidPageRequestException;
import hyundai.movie.domains.review.exception.ReviewNotFoundException;
import hyundai.movie.domains.review.repository.ReviewLikeRepository;
import hyundai.movie.domains.review.repository.ReviewRepository;
import hyundai.movie.global.common.s3.S3Service;
import jakarta.transaction.Transactional;
import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Slice;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewRepository reviewRepository;
    private final ReviewLikeRepository reviewLikeRepository;
    private final MovieRepository movieRepository;
    private final MemberVectorService memberVectorService;
    private final MovieRecommendationService movieRecommendationService;
    private final MemberRepository memberRepository;
    private final CommentRepository commentRepository;
    private final S3Service s3Service;

    // 텍스트 리뷰 작성
    public TextReviewCreateResponse createReview(Long movieId, TextReviewCreateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(
                        () -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));

        Movie movie = movieRepository.findById(movieId)
                .orElseThrow(
                        () -> new MovieNotFoundException("ID가 " + movieId + "인 영화를 찾을 수 없습니다."));

        if (reviewRepository.existsByMovieAndMember(movie, member)) {
            throw new DuplicateReviewException("이미 이 영화에 대한 리뷰를 작성하셨습니다.");
        }

        Review review = Review.builder()
                .movie(movie)
                .member(member)
                .rating(request.getRating())
                .content(request.getContent())
                .isSpoil(request.getIsSpoil())
                .build();

        Review savedReview = reviewRepository.save(review);

        /* 추천 시스템 시작 */

        // 1. 상세 조회에 대한 벡터 업데이트
        memberVectorService.updateVectorsByReview(member.getId(), movieId, false);

        // 2. 추천 계산 트리거 (비동기)
        movieRecommendationService.calculateRecommendation(member);

        /* 추천 시스템 종료 */

        return TextReviewCreateResponse.from(savedReview);
    }

    // 포토카드 리뷰 작성
    public PhotoReviewCreateResponse createPhotoReview(Long movieId,
            PhotoReviewCreateRequest request) {
        Member member = getAuthenticatedMember();
        Movie movie = getMovieById(movieId);

        if (reviewRepository.existsByMovieAndMember(movie, member)) {
            throw new DuplicateReviewException("이미 이 영화에 대한 리뷰를 작성하셨습니다.");
        }

        String photoCardUrl = uploadPhotoCard(request.getPhotocard(), member.getNickname());

        Review review = Review.builder().movie(movie).member(member).rating(request.getRating())
                .content(request.getContent()).isSpoil(request.getIsSpoil()).photocard(photoCardUrl)
                .build();

        /* 추천 시스템 시작 */

        // 1. 상세 조회에 대한 벡터 업데이트
        memberVectorService.updateVectorsByReview(member.getId(), movieId, true);

        // 2. 추천 계산 트리거 (비동기)
        movieRecommendationService.calculateRecommendation(member);

        /* 추천 시스템 종료 */

        Review savedReview = reviewRepository.save(review);
        return PhotoReviewCreateResponse.from(savedReview);
    }

    private Member getAuthenticatedMember() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();
        return memberRepository.findById(memberId)
                .orElseThrow(
                        () -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));
    }

    private Movie getMovieById(Long movieId) {
        return movieRepository.findById(movieId)
                .orElseThrow(
                        () -> new MovieNotFoundException("ID가 " + movieId + "인 영화를 찾을 수 없습니다."));
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

    @Transactional
    public ReviewListResponse getReviewsByMovie(Long movieId, PageRequest pageRequest) {
        if (pageRequest.getPageNumber() < 0 || pageRequest.getPageSize() <= 0) {
            throw new InvalidPageRequestException("페이지 번호와 페이지 크기는 0 이상이어야 합니다.");
        }
        Movie movie = getMovieById(movieId);
        Member member = getAuthenticatedMember();

        // 내 리뷰 조회 + totalComments
        Optional<Review> myReviewOpt = reviewRepository.findByMovieAndMember(movie, member);
        MyReviewDto myReview = myReviewOpt.map(review -> {
            int totalComments = commentRepository.countByReview(review);
            boolean isLike = reviewLikeRepository.existsByReviewAndMember(review, member);
            return MyReviewDto.from(review, totalComments, isLike);
        }).orElse(null);

        // 전체 리뷰 조회 (본인 제외) + totalComments
        // Slice<Review> reviewSlice = reviewRepository.findByMovieId(movieId, PageRequest.of(pageRequest.getPageNumber() - 1, pageRequest.getPageSize()));

        Slice<Review> reviewSlice = reviewRepository.findAllReviewsExceptMember(movie, member,
                pageRequest);
        List<ReviewDto> otherReviewList = reviewSlice.getContent().stream()
                .map(review -> {
                    int totalComments = commentRepository.countByReview(review);
                    boolean isLike = reviewLikeRepository.existsByReviewAndMember(review, member);
                    return ReviewDto.from(review, isLike, totalComments);
                })
                .collect(Collectors.toList());

        // 전체 리뷰 이용해서 totalPages 계산
        int totalReviews = reviewRepository.countByMovie(movie); // 전체 리뷰 수
        int totalPages = (int) Math.ceil((double) totalReviews / pageRequest.getPageSize());

        Double averageRating = reviewRepository.getAverageRatingByMovieId(movieId);

        averageRating = averageRating != null ? averageRating : 0.0;
      
      
        /* 추천 시스템 시작 */

        // 1. 상세 조회에 대한 벡터 업데이트
        memberVectorService.updateVectorsByMovieView(member.getId(), movieId);

        // 2. 추천 계산 트리거 (비동기)
        movieRecommendationService.calculateRecommendation(member);

        /* 추천 시스템 종료 */


        return new ReviewListResponse(
                myReview,
                //  reviewSlice.getContent().stream().map(review -> ReviewResponse.from(review, false)).collect(Collectors.toList()),
                otherReviewList,
                reviewSlice,
                totalPages,
                totalReviews,
                averageRating
        );
    }

    // 리뷰 수정
    @Transactional
    public ReviewUpdateResponse updateReview(Long reviewId, ReviewUpdateRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        // 작성자 검증을 위해 현재 로그인한 사용자를 찾음
        Member member = memberRepository.findById(memberId)
                .orElseThrow(
                        () -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));

        // 리뷰가 존재하는지 확인하고 작성자가 맞는지 검증
        Review review = reviewRepository.findById(reviewId)
                .filter(r -> r.getMember().getId().equals(memberId))
                .orElseThrow(
                        () -> new ReviewNotFoundException("ID가 " + reviewId + "인 리뷰를 찾을 수 없습니다."));

        // 리뷰 업데이트
        review.updateContent(request.getRating(), request.getContent(), request.getIsSpoil());
        return ReviewUpdateResponse.from(review);
    }

    // 리뷰 삭제
    public void deleteReview(Long reviewId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(
                        () -> new MemberNotFoundException("ID가 " + memberId + "인 회원을 찾을 수 없습니다."));

        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(
                        () -> new ReviewNotFoundException("ID가 " + reviewId + "인 리뷰를 찾을 수 없습니다."));

        if (!review.getMember().getId().equals(member.getId())) {
            throw new IllegalStateException("해당 리뷰를 삭제할 권한이 없습니다.");
        }

        reviewRepository.delete(review);
    }


    // myreview 조회
    public MyReviewListResponse getMyReviews(PageRequest pageRequest) {

        Member member = getAuthenticatedMember();

        // 리뷰 조회
        Slice<Review> reviewSlice = reviewRepository.findByMemberId(member.getId(), pageRequest);

        // 전체 리뷰 수 가져오기
        int totalElements = reviewRepository.countByMemberId(member.getId());
        int totalPages = (int) Math.ceil((double) totalElements / pageRequest.getPageSize());

        // 사용자(본인)이 작성한 전체 리뷰 수
        int totalReviews = reviewRepository.countByMemberId(member.getId());


        // DTO 매핑
        Slice<ReviewforMyPageDto> dtoSlice = reviewSlice.map(review -> {
            int totalComments = commentRepository.countByReview(review);
            boolean isLike = reviewLikeRepository.existsByReviewAndMember(review, member); // 좋아요 여부 확인
            return ReviewforMyPageDto.from(review, totalComments, isLike);
        });

        return new MyReviewListResponse(dtoSlice, totalPages, totalReviews);
    }

    // 최신 리뷰 10개
    public RecentReviewResponse getRecentReviews() {
        // 최신 10개의 리뷰 가져오기
        List<Review> reviews = reviewRepository.findTop10ByPhotocardIsNotNullOrderByCreatedAtDesc();

        // Review를 RecentReviewDto로 변환
        List<RecentReviewDto> recentReviews = reviews.stream()
                .map(review -> {
                    // 댓글 수 계산
                    int totalComments = commentRepository.countByReview(review);

                    // RecentReviewDto 생성
                    return new RecentReviewDto(
                            review.getMovie().getId(),          // movieId
                            review.getId(),                    // reviewId
                            review.getRating(),                // rating
                            totalComments,                     // totalComments
                            review.getContent(),               // content
                            review.getPhotocard()              // photocard
                    );
                })
                .collect(Collectors.toList());


        return new RecentReviewResponse(recentReviews);
    }


    @Transactional
    public ReviewLikeResponse toggleReviewLike(Long reviewId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(MemberNotFoundException::new);

        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(ReviewNotFoundException::new);

        ReviewLike reviewLike = reviewLikeRepository.findReviewLikeByReviewIdAndMemberId(reviewId,
                memberId).orElseGet(
                () -> ReviewLike.builder().member(member).review(review).isLike(false).build());

        ReviewLike savedReviewLike = reviewLikeRepository.save(
                ReviewLike.builder().id(reviewLike.getId()).member(member).review(review)
                        .isLike(!reviewLike.getIsLike()).build());

        return ReviewLikeResponse.from(savedReviewLike);
    }

    @Transactional
    public ReviewLikeResponse getReviewLike(Long reviewId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Long memberId = (Long) authentication.getPrincipal();

        Member member = memberRepository.findById(memberId)
                .orElseThrow(MemberNotFoundException::new);

        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(ReviewNotFoundException::new);

        ReviewLike reviewLike = reviewLikeRepository.findReviewLikeByReviewIdAndMemberId(reviewId,
                memberId).orElseGet(
                () -> ReviewLike.builder().member(member).review(review).isLike(false).build());

        return ReviewLikeResponse.from(reviewLike);
    }


}
