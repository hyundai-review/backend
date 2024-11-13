package hyundai.movie.domains.movie.exception;

public class MovieNotFoundException extends RuntimeException{
    public MovieNotFoundException() {super("영화를 찾을 수 없음.");}
    public MovieNotFoundException(String message) {super(message);}
}
