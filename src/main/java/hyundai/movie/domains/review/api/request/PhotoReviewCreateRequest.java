package hyundai.movie.domains.review.api.request;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Builder
@AllArgsConstructor
public class PhotoReviewCreateRequest {

    @NotNull(message = "평점은 필수 항목입니다.")
    private Integer rating;

    @NotNull(message = "리뷰 내용은 필수 항목입니다.")
    private String content;

    @NotNull(message = "스포일러 여부는 필수 항목입니다.")
    private Boolean isSpoil;

    @NotNull(message = "포토카드는 필수 항목입니다.")
    private MultipartFile photocard;

}
