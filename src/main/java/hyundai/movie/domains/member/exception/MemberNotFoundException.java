package hyundai.movie.domains.member.exception;

public class MemberNotFoundException extends RuntimeException {
    public MemberNotFoundException() {super("멤버를 찾을 수 없음.");}
    public MemberNotFoundException(String message) {super(message);}
}
