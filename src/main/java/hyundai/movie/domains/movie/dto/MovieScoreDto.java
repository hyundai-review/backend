package hyundai.movie.domains.movie.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MovieScoreDto {
    private Long movieId;
    private double score;
    private boolean isFromSimilarity;

    public double getFinalScore() {
        return isFromSimilarity ? score * 1.2 : score;
    }

    public static MovieScoreDto createFromSimilarity(Long movieId, double score) {
        return new MovieScoreDto(movieId, score, true);
    }

    public static MovieScoreDto createFromPopularity(Long movieId, double score) {
        return new MovieScoreDto(movieId, score, false);
    }
}
