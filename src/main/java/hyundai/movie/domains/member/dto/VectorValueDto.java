package hyundai.movie.domains.member.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class VectorValueDto {
    private double score;
    private int ttl;

    public static VectorValueDto create(double score) {
        return new VectorValueDto(score, 0);
    }

    public VectorValueDto addScore(double additionalScore) {
        return new VectorValueDto(this.score + additionalScore, 0);  // ttl 리셋
    }

    public VectorValueDto incrementTTL() {
        return new VectorValueDto(this.score, this.ttl + 1);
    }
}