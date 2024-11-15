package hyundai.movie.domains.review.dto;

import lombok.Getter;
import org.springframework.data.domain.Slice;

@Getter
public class SliceInfoDto {
    private final boolean hasNext;
    private final int pageNumber;
    private final int pageSize;
    private final int numberOfElements;
    private final int totalPages;

    public SliceInfoDto(Slice<?> slice, int totalPages) {
        this.hasNext = slice.hasNext();
        this.pageNumber = slice.getNumber();
        this.pageSize = slice.getSize();
        this.numberOfElements = slice.getNumberOfElements();
        this.totalPages = totalPages;
    }

}
