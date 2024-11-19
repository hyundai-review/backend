package hyundai.movie.helper;

import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.movie.domain.*;
import java.time.LocalDateTime;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.List;

public class MovieTestHelper {

    // 기본 Movie 생성
    public static Movie createMovie() {
        return Movie.builder()
                .tmdbId(1234L)
                .title("테스트 영화")
                .releaseDate("2024-01-01")
                .tagline("테스트 태그라인")
                .overview("테스트 영화 줄거리입니다.")
                .runtime(120)
                .certification("15")
                .status("Released")
                .popularity(8.5)
                .voteAvg(4.5)
                .revenue(1000000L)
                .build();
    }

    // ID가 포함된 Movie 생성
    public static Movie createMovieWithId(Long id) {
        Movie movie = createMovie();
        ReflectionTestUtils.setField(movie, "id", id);
        return movie;
    }

    // Actor 생성
    public static Actor createActor() {
        return Actor.builder()
                .tmdbId(5678L)
                .name("테스트 배우")
                .profile("http://test-profile.jpg")
                .build();
    }

    // ID가 포함된 Actor 생성
    public static Actor createActorWithId(Long id) {
        Actor actor = createActor();
        ReflectionTestUtils.setField(actor, "id", id);
        return actor;
    }

    // Director 생성
    public static Director createDirector() {
        return Director.builder()
                .tmdbId(9012L)
                .name("테스트 감독")
                .profile("http://test-director-profile.jpg")
                .build();
    }

    // ID가 포함된 Director 생성
    public static Director createDirectorWithId(Long id) {
        Director director = createDirector();
        ReflectionTestUtils.setField(director, "id", id);
        return director;
    }

    // Genre 생성
    public static Genre createGenre() {
        return Genre.builder()
                .name("액션")
                .build();
    }

    // ID가 포함된 Genre 생성
    public static Genre createGenreWithId(Long id) {
        Genre genre = createGenre();
        ReflectionTestUtils.setField(genre, "id", id);
        return genre;
    }

    // MovieActor 생성
    public static MovieActor createMovieActor(Movie movie, Actor actor) {
        return MovieActor.builder()
                .movie(movie)
                .actor(actor)
                .role("주연")
                .build();
    }

    // ID가 포함된 MovieActor 생성
    public static MovieActor createMovieActorWithId(Long id, Movie movie, Actor actor) {
        MovieActor movieActor = createMovieActor(movie, actor);
        ReflectionTestUtils.setField(movieActor, "id", id);
        return movieActor;
    }

    // MovieDirector 생성
    public static MovieDirector createMovieDirector(Movie movie, Director director) {
        return MovieDirector.builder()
                .movie(movie)
                .director(director)
                .build();
    }

    // ID가 포함된 MovieDirector 생성
    public static MovieDirector createMovieDirectorWithId(Long id, Movie movie, Director director) {
        MovieDirector movieDirector = createMovieDirector(movie, director);
        ReflectionTestUtils.setField(movieDirector, "id", id);
        return movieDirector;
    }

    // MovieGenre 생성
    public static MovieGenre createMovieGenre(Movie movie, Genre genre) {
        return MovieGenre.builder()
                .movie(movie)
                .genre(genre)
                .build();
    }

    // ID가 포함된 MovieGenre 생성
    public static MovieGenre createMovieGenreWithId(Long id, Movie movie, Genre genre) {
        MovieGenre movieGenre = createMovieGenre(movie, genre);
        ReflectionTestUtils.setField(movieGenre, "id", id);
        return movieGenre;
    }

    // MovieImage 생성
    public static MovieImage createMovieImage(Movie movie) {
        return MovieImage.builder()
                .movie(movie)
                .height(1080)
                .width(1920)
                .filePath("http://test-image.jpg")
                .isPoster(true)
                .build();
    }

    // ID가 포함된 MovieImage 생성
    public static MovieImage createMovieImageWithId(Long id, Movie movie) {
        MovieImage movieImage = createMovieImage(movie);
        ReflectionTestUtils.setField(movieImage, "id", id);
        return movieImage;
    }

    // MovieRecommendation 생성
    public static MovieRecommendation createMovieRecommendation(Member member) {
        return MovieRecommendation.builder()
                .member(member)
                .movieList("[1, 2, 3, 4, 5]")
                .lastCalculated(LocalDateTime.now())
                .build();
    }

    // ID가 포함된 MovieRecommendation 생성
    public static MovieRecommendation createMovieRecommendationWithId(Long id, Member member) {
        MovieRecommendation movieRecommendation = createMovieRecommendation(member);
        ReflectionTestUtils.setField(movieRecommendation, "id", id);
        return movieRecommendation;
    }

    // Movie와 관련 엔티티들을 모두 포함한 완전한 Movie 객체 생성
    public static Movie createCompleteMovie(Long movieId) {
        Movie movie = createMovieWithId(movieId);
        Actor actor = createActorWithId(1L);
        Director director = createDirectorWithId(1L);
        Genre genre = createGenreWithId(1L);

        MovieActor movieActor = createMovieActorWithId(1L, movie, actor);
        MovieDirector movieDirector = createMovieDirectorWithId(1L, movie, director);
        MovieGenre movieGenre = createMovieGenreWithId(1L, movie, genre);
        MovieImage movieImage = createMovieImageWithId(1L, movie);

        ReflectionTestUtils.setField(movie, "movieActors", List.of(movieActor));
        ReflectionTestUtils.setField(movie, "movieDirectors", List.of(movieDirector));
        ReflectionTestUtils.setField(movie, "movieGenres", List.of(movieGenre));
        ReflectionTestUtils.setField(movie, "images", List.of(movieImage));

        return movie;
    }
}