package hyundai.movie.domains.movie.dto;

import hyundai.movie.domains.movie.domain.BoxOffice;
import hyundai.movie.domains.movie.domain.MovieImage;
import lombok.Builder;
import lombok.Getter;

@Getter
public class BoxOfficeDto {
    private final Long movieId;
    private final Integer rank;
    private final String poster;
    private final String title;
    private final String tagline;
    private final String releaseDate;


    @Builder
    private BoxOfficeDto(Long movieId, Integer rank, String poster, String title, String tagline, String releaseDate) {
        this.movieId = movieId;
        this.rank = rank;
        this.poster = poster;
        this.title = title;
        this.tagline = tagline;
        this.releaseDate = releaseDate;
    }

    public static BoxOfficeDto from(BoxOffice boxOffice) {
        String posterPath = boxOffice
                .getMovie()
                .getImages().stream()
                .filter(MovieImage::getIsPoster)
                .findFirst()
                .map(MovieImage::getFilePath)
                .orElse(null);

        return BoxOfficeDto.builder()
                .movieId(boxOffice.getMovie().getId())
                .rank(boxOffice.getRank())
                .poster(posterPath)
                .title(boxOffice.getMovie().getTitle())
                .tagline(boxOffice.getMovie().getTagline())
                .releaseDate(boxOffice.getMovie().getReleaseDate())
                .build();
    }
}
