//package hyundai.movie.domains.member.service;
//
//import static org.mockito.Mockito.when;
//
//import hyundai.movie.domains.member.domain.Member;
//import hyundai.movie.domains.movie.domain.Movie;
//import hyundai.movie.domains.review.domain.Review;
//import hyundai.movie.domains.review.repository.ReviewRepository;
//import hyundai.movie.domains.review.service.ReviewService;
//import hyundai.movie.helper.ReviewTestHelper;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.DisplayName;
//import org.junit.jupiter.api.Nested;
//import org.junit.jupiter.api.Test;
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.junit.jupiter.MockitoExtension;
//import org.mockito.junit.jupiter.MockitoSettings;
//import org.mockito.quality.Strictness;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContext;
//import org.springframework.security.core.context.SecurityContextHolder;
//
//@ExtendWith(MockitoExtension.class)
//@MockitoSettings(strictness = Strictness.LENIENT)
//public class ReviewServiceTest {
//
//    @InjectMocks
//    private ReviewService reviewService;
//
//    @Mock
//    private ReviewRepository reviewRepository;
//
//    @Mock
//    private Authentication authentication;
//
//    @Mock
//    private SecurityContext securityContext;
//
//    @BeforeEach
//    void setUp() {
//        SecurityContextHolder.setContext(securityContext);
//        when(securityContext.getAuthentication()).thenReturn(authentication);
//    }
//
//    @Nested
//    @DisplayName("리뷰 작성")
//    class CreateReviewTest {
//
//        @Test
//        @DisplayName("정상적인 텍스트 리뷰 작성")
//        void createReview_success() {
//            // Given
//            Member member = MemberTestHelper.createMemberWithId(1L);
//            Movie movie = MovieTestHelper.createMovieWithId(1L, "Test Movie");
//            Review review = ReviewTestHelper.createReviewWithId(1L, member, movie, 5, "Great movie!", false);
//
//
//
//
//
//        }
//    }


//}
