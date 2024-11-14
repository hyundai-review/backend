package hyundai.movie.domains.review.api;

import hyundai.movie.domains.review.api.request.PhotoReviewCreateRequest;
import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.api.response.PhotoReviewCreateResponse;
import hyundai.movie.domains.review.api.response.TextReviewCreateResponse;
import hyundai.movie.domains.review.service.ReviewService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor
@RequestMapping("/reviews")
public class ReviewController {
    private final ReviewService reviewService;

    @Valid
    @PostMapping("/{movieId}")
    public ResponseEntity<TextReviewCreateResponse> createReview(
            @PathVariable Long movieId,
            @Valid @RequestBody TextReviewCreateRequest request) {
        TextReviewCreateResponse response = reviewService.createReview(movieId, request);
        return ResponseEntity.ok(response);
    }

    @Valid
    @PostMapping(value = "/photo/{movieId}", consumes = "multipart/form-data")
    public ResponseEntity<PhotoReviewCreateResponse> createPhotoReview(
            @PathVariable Long movieId,
            @RequestParam("rating") Integer rating,
            @RequestParam("content") String content,
            @RequestParam("isSpoil") Boolean isSpoil,
            @RequestParam("photocard") MultipartFile photocard) {

        // PhotoReviewCreateRequest DTO 생성
        PhotoReviewCreateRequest request = new PhotoReviewCreateRequest(rating, content, isSpoil, photocard);

        // 리뷰 생성 요청 처리
        PhotoReviewCreateResponse response = reviewService.createPhotoReview(movieId, request);
        return ResponseEntity.ok(response);
    }




}
