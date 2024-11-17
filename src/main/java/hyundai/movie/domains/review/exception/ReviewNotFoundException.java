package hyundai.movie.domains.review.exception;

public class ReviewNotFoundException extends RuntimeException {
    public ReviewNotFoundException() {super("리뷰가 존재하지 않음");}
    public ReviewNotFoundException(String message) {
        super(message);
    }
}
