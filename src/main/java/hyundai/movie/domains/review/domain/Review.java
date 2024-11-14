package hyundai.movie.domains.review.domain;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.global.common.BaseTimeEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name="review")
public class Review extends BaseTimeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", nullable = false)
    private Movie movie;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "member_id", nullable = false)
    private Member member;


    private String photoCard;
    private String content;
    private Integer rating;
    private Boolean isSpoil;



    @Builder
    public Review(Movie movie, Member member, String photoCard, String content, Integer rating, Boolean isSpoil) {
        this.movie = movie;
        this.member = member;
        this.photoCard = photoCard;
        this.content = content;
        this.rating = rating;
        this.isSpoil = isSpoil;
    }
}
