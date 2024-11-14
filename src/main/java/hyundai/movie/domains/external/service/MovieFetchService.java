package hyundai.movie.domains.external.service;

import hyundai.movie.domains.external.client.TmdbApiClient;
import hyundai.movie.domains.external.dto.TmdbCastDto;
import hyundai.movie.domains.external.dto.TmdbCrewDto;
import hyundai.movie.domains.external.dto.TmdbGenreDto;
import hyundai.movie.domains.external.dto.TmdbImageListDto;
import hyundai.movie.domains.external.dto.TmdbMovieDto;
import hyundai.movie.domains.movie.domain.Actor;
import hyundai.movie.domains.movie.domain.Director;
import hyundai.movie.domains.movie.domain.Genre;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.domain.MovieActor;
import hyundai.movie.domains.movie.domain.MovieDirector;
import hyundai.movie.domains.movie.domain.MovieGenre;
import hyundai.movie.domains.movie.domain.MovieImage;
import hyundai.movie.domains.movie.exception.MovieNotFoundException;
import hyundai.movie.domains.movie.repository.ActorRepository;
import hyundai.movie.domains.movie.repository.DirectorRepository;
import hyundai.movie.domains.movie.repository.GenreRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import jakarta.transaction.Transactional;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class MovieFetchService {

    private final TmdbApiClient tmdbApiClient;
    private final MovieRepository movieRepository;
    private final ActorRepository actorRepository;
    private final DirectorRepository directorRepository;
    private final GenreRepository genreRepository;
    private Set<Long> nowPlayingMovieIds = new HashSet<>();

    public Movie initializeMovieById(Long tmdbId) {
        return movieRepository.findByTmdbId(tmdbId)
                .orElseGet(() -> {
                    TmdbMovieDto tmdbMovie = tmdbApiClient.getMovie(tmdbId);
                    return initializeMovie(tmdbMovie);
                });
    }

    public Movie initializeMovieByName(String query, String releaseYear) {
        List<TmdbMovieDto> movies = tmdbApiClient.searchMovie(query, releaseYear);
        if (movies.isEmpty()) {
            log.warn("No movie found for title: {} and year: {}", query, releaseYear);
            throw new MovieNotFoundException("영화를 찾을 수 없습니다: " + query);
        }

        TmdbMovieDto searchedMovie = movies.stream()
                .filter(m -> m.getTitle().equals(query) &&
                        m.getReleaseDate().startsWith(releaseYear))
                .findFirst()
                .orElseGet(() -> movies.get(0));

        TmdbMovieDto detailedMovie = tmdbApiClient.getMovie(searchedMovie.getId());

        return movieRepository.findByTmdbId(detailedMovie.getId())
                .orElseGet(() -> {
                    log.info("Initializing new movie: {} ({})", query, releaseYear);
                    return initializeMovie(detailedMovie);
                });
    }

    private Movie initializeMovie(TmdbMovieDto tmdbMovie) {
        collectNowPlayingMovies();

        // 날짜 변환 및 비교 로직
        LocalDate releaseDate = null;
        if (tmdbMovie.getReleaseDate() != null && !tmdbMovie.getReleaseDate().isEmpty()) {
            try {
                releaseDate = LocalDate.parse(tmdbMovie.getReleaseDate());
            } catch (DateTimeParseException e) {
                log.warn("Invalid release date format for movie {}: {}", tmdbMovie.getId(),
                        tmdbMovie.getReleaseDate());
                releaseDate = LocalDate.of(1900, 1, 1);
            }
        }

        // status 커스텀 로직
        String customStatus;
        if (releaseDate != null && releaseDate.isAfter(LocalDate.now())) {
            customStatus = "UPCOMING";
        } else if (nowPlayingMovieIds.contains(tmdbMovie.getId())) {
            customStatus = "NOW_PLAYING";
        } else if (tmdbMovie.getStatus().equals("Released") &&
                releaseDate != null && releaseDate.isBefore(LocalDate.now())) {
            customStatus = "RELEASED";
        } else {
            customStatus = "UNKNOWN";
        }

        // 1. 영화 기본 정보 생성
        Movie movie = Movie.builder()
                .tmdbId(tmdbMovie.getId())
                .title(tmdbMovie.getTitle())
                .releaseDate(tmdbMovie.getReleaseDate())
                .tagline(tmdbMovie.getTagline())
                .overview(tmdbMovie.getOverview())
                .runtime(tmdbMovie.getRuntime())
                .certification(tmdbMovie.getCertification())
                .status(customStatus)
                .popularity(tmdbMovie.getPopularity())
                .voteAvg(tmdbMovie.getVoteAvg())
                .revenue(tmdbMovie.getRevenue())
                .build();

        // 2. 장르 연결
        tmdbMovie.getGenres().forEach(genreDto -> {
            Genre genre = genreRepository.findByTmdbId(genreDto.getId())
                    .orElseGet(() -> createGenre(genreDto));

            MovieGenre movieGenre = MovieGenre.builder()
                    .movie(movie)
                    .genre(genre)
                    .build();
            movie.getMovieGenres().add(movieGenre);
        });

        // 3. 배우 연결
        tmdbMovie.getCredits().getCast().stream().limit(5).forEach(castDto -> {
            Actor actor = actorRepository.findByTmdbId(castDto.getId())
                    .orElseGet(() -> createActor(castDto));

            MovieActor movieActor = MovieActor.builder()
                    .movie(movie)
                    .actor(actor)
                    .role(castDto.getCharacter())
                    .build();
            movie.getMovieActors().add(movieActor);
        });

        // 4. 감독 연결
        tmdbMovie.getCredits().getCrew().stream()
                .filter(crew -> "Director".equals(crew.getJob()))
                .forEach(directorDto -> {
                    Director director = directorRepository.findByTmdbId(directorDto.getId())
                            .orElseGet(() -> createDirector(directorDto));

                    MovieDirector movieDirector = MovieDirector.builder()
                            .movie(movie)
                            .director(director)
                            .build();
                    movie.getMovieDirectors().add(movieDirector);
                });

        // 5. 이미지 연결
        TmdbImageListDto posterList = tmdbApiClient.getMovieImages(tmdbMovie.getId(), "ko, en, null");

        posterList.getPosters().forEach(imageDto -> {
            MovieImage movieImage = MovieImage.builder()
                    .movie(movie)
                    .height(imageDto.getHeight())
                    .width(imageDto.getWidth())
                    .filePath(imageDto.getFilePath())
                    .isPoster(true)
                    .build();
            movie.getImages().add(movieImage);
        });

        TmdbImageListDto backdropList = tmdbApiClient.getMovieImages(tmdbMovie.getId(), "null");

        backdropList.getBackdrops().forEach(imageDto -> {
            MovieImage movieImage = MovieImage.builder()
                    .movie(movie)
                    .height(imageDto.getHeight())
                    .width(imageDto.getWidth())
                    .filePath(imageDto.getFilePath())
                    .isPoster(false)  // backdrop
                    .build();
            movie.getImages().add(movieImage);
        });

        return movieRepository.save(movie);
    }

    private Genre createGenre(TmdbGenreDto dto) {
        return genreRepository.findByName(dto.getName())
                .orElseGet(() -> {
                    Genre genre = Genre.builder()
                            .name(dto.getName())
                            .build();
                    return genreRepository.save(genre);
                });
    }

    private Actor createActor(TmdbCastDto dto) {
        Actor actor = Actor.builder()
                .tmdbId(dto.getId())
                .profile(dto.getProfilePath())
                .name(dto.getName())
                .build();

        return actorRepository.save(actor);
    }

    private Director createDirector(TmdbCrewDto dto) {
        Director director = Director.builder()
                .tmdbId(dto.getId())
                .profile(dto.getProfilePath())
                .name(dto.getName())
                .build();

        return directorRepository.save(director);
    }

    private void collectNowPlayingMovies() {
        List<TmdbMovieDto> nowPlayingMovies = tmdbApiClient.getNowPlayingMovies();
        nowPlayingMovieIds = nowPlayingMovies.stream()
                .map(TmdbMovieDto::getId)
                .collect(Collectors.toSet());
    }
}
