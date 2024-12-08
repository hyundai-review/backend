package hyundai.movie.global.error;

import hyundai.movie.domains.comment.exception.CommentNotFoundException;
import hyundai.movie.domains.member.exception.MemberNotFoundException;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.review.exception.DuplicateReviewException;
import hyundai.movie.domains.review.exception.InvalidPageRequestException;
import hyundai.movie.domains.review.exception.ReviewNotFoundException;
import hyundai.movie.global.common.reponse.ErrorResponse;
import java.nio.file.AccessDeniedException;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import javax.naming.AuthenticationException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {
    // @Valid 처리
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ErrorResponse> handleValidationExceptions(
            MethodArgumentNotValidException ex) {
        log.error("handleValidationExceptions", ex);
        Map<String, String> errors = new HashMap<>();

        ex.getBindingResult().getFieldErrors().forEach(error ->
                errors.put(error.getField(), error.getDefaultMessage())
        );

        return ResponseEntity
                .status(HttpStatus.BAD_REQUEST)
                .body(ErrorResponse.builder()
                        .status(HttpStatus.BAD_REQUEST.value())
                        .message("입력값 검증 실패")
                        .errors(errors)
                        .build());
    }



    @ExceptionHandler(AccessDeniedException.class)
    public ResponseEntity<ErrorResponse> handleAccessDeniedException(
            AccessDeniedException ex) {
        log.error("접근 권한 없음", ex);
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        return ResponseEntity
                .status(HttpStatus.FORBIDDEN)
                .body(new ErrorResponse(
                        HttpStatus.FORBIDDEN.value(),
                        "접근 권한이 없습니다",
                        errors));
    }

    @ExceptionHandler(AuthenticationException.class)
    public ResponseEntity<ErrorResponse> handleAuthenticationException(
            AuthenticationException ex) {
        log.error("인증 실패", ex);
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        return ResponseEntity
                .status(HttpStatus.UNAUTHORIZED)
                .body(new ErrorResponse(
                        HttpStatus.UNAUTHORIZED.value(),
                        "인증에 실패했습니다",
                        errors));
    }


    @ExceptionHandler(MemberNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleMemberNotFoundException(MemberNotFoundException ex) {
        log.error("회원 정보를 찾을 수 없음", ex);

        // 오류 메시지를 담을 Map 생성
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        // ErrorResponse를 반환하여 클라이언트에게 예외 정보를 전달
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(new ErrorResponse(
                        HttpStatus.NOT_FOUND.value(),
                        "회원 정보를 찾을 수 없습니다",
                        errors));
    }

    @ExceptionHandler(MovieNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleMovieNotFoundException(MovieNotFoundException ex) {
        log.error("영화 정보를 찾을 수 없음", ex);

        // 오류 메시지를 담을 Map 생성
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        // ErrorResponse를 반환하여 클라이언트에게 예외 정보를 전달
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(new ErrorResponse(
                        HttpStatus.NOT_FOUND.value(),
                        "영화 정보를 찾을 수 없습니다",
                        errors));
    }


    @ExceptionHandler(DuplicateReviewException.class)
    public ResponseEntity<ErrorResponse> handleDuplicateReviewException(DuplicateReviewException ex) {
        log.error("중복 리뷰 오류 발생", ex);

        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        return ResponseEntity
                .status(HttpStatus.CONFLICT)
                .body(new ErrorResponse(
                        HttpStatus.CONFLICT.value(),
                        "중복 리뷰 오류",
                        errors));
    }

    @ExceptionHandler(InvalidPageRequestException.class)
    public ResponseEntity<ErrorResponse> handleInvalidPageRequestException(InvalidPageRequestException ex) {
        ErrorResponse errorResponse = new ErrorResponse(HttpStatus.FORBIDDEN.value(), ex.getMessage(), null);
        return ResponseEntity.status(HttpStatus.FORBIDDEN).body(errorResponse);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorResponse> handleAllExceptions(
            Exception ex) {
        log.error("handleAllExceptions", ex);
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        return ResponseEntity
                .status(HttpStatus.INTERNAL_SERVER_ERROR)
                .body(new ErrorResponse(
                        HttpStatus.INTERNAL_SERVER_ERROR.value(),
                        "서버 오류 발생",
                        errors));
    }

    @ExceptionHandler(ReviewNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleReviewNotFoundException(ReviewNotFoundException ex) {
        log.error("리뷰 정보를 찾을 수 없음", ex);

        // 오류 메시지를 담을 Map 생성
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        // ErrorResponse를 반환하여 클라이언트에게 예외 정보를 전달
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(new ErrorResponse(
                        HttpStatus.NOT_FOUND.value(),
                        "리뷰 정보를 찾을 수 없습니다",
                        errors));
    }

    @ExceptionHandler(CommentNotFoundException.class)
    public ResponseEntity<ErrorResponse> handleCommentNotFoundException(CommentNotFoundException ex) {
        log.error("답글 정보를 찾을 수 없음", ex);

        // 오류 메시지를 담을 Map 생성
        Map<String, String> errors = new HashMap<>();
        errors.put("message", ex.getMessage());

        // ErrorResponse를 반환하여 클라이언트에게 예외 정보를 전달
        return ResponseEntity
                .status(HttpStatus.NOT_FOUND)
                .body(new ErrorResponse(
                        HttpStatus.NOT_FOUND.value(),
                        "답글 정보를 찾을 수 없습니다",
                        errors));
    }


}
