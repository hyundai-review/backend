package hyundai.movie.domains.movie.domain;

import hyundai.movie.domains.member.domain.Member;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import java.time.LocalDateTime;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "movie_recommendation")
public class MovieRecommendation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;

    @Column(columnDefinition = "TEXT")
    private String movieList;

    private LocalDateTime lastCalculated;

    @Builder
    public MovieRecommendation(Member member, String movieList, LocalDateTime lastCalculated) {
        this.member = member;
        this.movieList = movieList;
        this.lastCalculated = lastCalculated;
    }

    public void updateRecommendation(String movieList) {
        this.movieList = movieList;
        this.lastCalculated = LocalDateTime.now();
    }
}
