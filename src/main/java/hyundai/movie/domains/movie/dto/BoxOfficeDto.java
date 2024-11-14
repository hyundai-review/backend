package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Getter;

@Getter
public class BoxOfficeDto {
    private final Long movieId;
    private final Integer rank;
    private final String poster;
    private final String releaseDate;

    private BoxOfficeDto(Long movieId, Integer rank, String poster, String releaseDate) {
        this.movieId = movieId;
        this.rank = rank;
        this.poster = poster;
        this.releaseDate = releaseDate;
    }

    // 정적 팩토리 매서드 패턴 네이밍 컨벤션
    // from : 하나의 매개변수를 받아서 해당 타입의 인스턴스를 반환
    // of : 여러 매개변수를 받아서 인스턴스를 생성
    public static BoxOfficeDto from(BoxOffice boxOffice) {
        String posterPath = boxOffice
                .getMovie()
                .getImages().stream()
                .filter(MovieImage::getIsPoster)
                .findFirst()
                .map(MovieImage::getFilePath)
                .orElse(null);

        return new BoxOfficeDto(
                boxOffice.getMovie().getId(),
                boxOffice.getRank(),
                posterPath,
                boxOffice.getMovie().getReleaseDate()
        );
    }
}
