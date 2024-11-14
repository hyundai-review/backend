package hyundai.movie.domains.review.api;

import hyundai.movie.domains.review.api.request.TextReviewCreateRequest;
import hyundai.movie.domains.review.api.response.TextReviewCreateResponse;
import hyundai.movie.domains.review.service.ReviewService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/reviews")
public class ReviewController {
    private final ReviewService reviewService;

    @PostMapping("/{movieId}")
    public ResponseEntity<TextReviewCreateResponse> createReview(
            @PathVariable Long movieId,
            @Valid @RequestBody TextReviewCreateRequest request) {
        TextReviewCreateResponse response = reviewService.createReview(movieId, request);
        return ResponseEntity.ok(response);
    }

}
