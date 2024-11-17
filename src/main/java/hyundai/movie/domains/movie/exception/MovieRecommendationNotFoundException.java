package hyundai.movie.domains.movie.exception;

public class MovieRecommendationNotFoundException extends RuntimeException{
    public MovieRecommendationNotFoundException() {super("영화 추천을 찾을 수 없음.");}
    public MovieRecommendationNotFoundException(String message) {super(message);}
}
