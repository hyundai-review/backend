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
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
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

    @Transactional
    public void fetchAllMovies(int startYear, int startMonth, int endYear, int endMonth) {
        LocalDate currentDate = LocalDate.of(startYear, startMonth, 1);
        LocalDate endDate = LocalDate.of(endYear, endMonth, 1);

        while (!currentDate.isAfter(endDate)) {
            try {
                List<Movie> movies = fetchMoviesByYearMonth(
                        currentDate.getYear(),
                        currentDate.getMonthValue()
                );
                log.info("Fetched {} movies for {}-{}",
                        movies.size(),
                        currentDate.getYear(),
                        currentDate.getMonthValue());

                // Thread.sleep 대신 TimeUnit 사용
                TimeUnit.MILLISECONDS.sleep(100);

            } catch (InterruptedException e) {
                Thread.currentThread().interrupt(); // 인터럽트 상태 복원
                log.error("Thread was interrupted", e);
                break;
            } catch (Exception e) {
                log.error("Error processing {}-{}: {}",
                        currentDate.getYear(),
                        currentDate.getMonthValue(),
                        e.getMessage());
            }

            currentDate = currentDate.plusMonths(1);
        }
    }

    @Transactional
    public List<Movie> fetchMoviesByYearMonth(int year, int month) {
        // 시작일과 종료일 설정
        LocalDate startDate = LocalDate.of(year, month, 1);
        LocalDate endDate = startDate.plusMonths(1).minusDays(1);

        // TMDB API 호출하여 해당 월의 영화 목록 가져오기 (인기도순)
        List<TmdbMovieDto> movies = tmdbApiClient.getMoviesByReleaseDate(
                startDate.toString(),  // yyyy-MM-dd 형식
                endDate.toString(),
                1  // 첫 페이지 (20개)
        );

        log.info("Found {} movies for {}-{}", movies.size(), year, month);

        // 영화 정보 저장
        return movies.stream()
                .filter(movieDto -> !movieRepository.existsByTmdbId(movieDto.getId()))  // 이미 존재하는 영화 필터링
                .map(movieDto -> {
                    try {
                        TmdbMovieDto detailedMovie = tmdbApiClient.getMovie(movieDto.getId());
                        log.info("Fetching detailed info for movie: {} ({})",
                                detailedMovie.getTitle(),
                                detailedMovie.getReleaseDate());
                        return fetchMovie(detailedMovie);
                    } catch (Exception e) {
                        log.error("Error fetching movie {}: {}", movieDto.getId(), e.getMessage());
                        return null;
                    }
                })
                .filter(Objects::nonNull)  // 에러 발생한 영화 필터링
                .collect(Collectors.toList());
    }

    public Movie fetchMovieById(Long tmdbId) {
        collectNowPlayingMovies();

        return movieRepository.findByTmdbId(tmdbId)
                .orElseGet(() -> {
                    TmdbMovieDto tmdbMovie = tmdbApiClient.getMovie(tmdbId);
                    return fetchMovie(tmdbMovie);
                });
    }

    public Movie fetchMovieByName(String query, String releaseYear) {
        collectNowPlayingMovies();

        List<TmdbMovieDto> movies;
        String queryTmp = query;

        do {
            movies = tmdbApiClient.searchMovie(queryTmp, releaseYear);

            if (!movies.isEmpty() || queryTmp.length() <= 1) break;
            queryTmp = queryTmp.substring(0, queryTmp.length() - 1);
        } while(true);

        if (movies.isEmpty()) {
            log.warn("Movie not found - title: {}, year: {}", query, releaseYear);
            throw new MovieNotFoundException("영화를 찾을 수 없습니다: " + query);
        }

        TmdbMovieDto searchedMovie = movies.stream()
                .filter(m -> m.getTitle().equals(query) &&
                        m.getReleaseDate().startsWith(releaseYear))
                .findFirst()
                .orElse(movies.get(0));

        TmdbMovieDto detailedMovie = tmdbApiClient.getMovie(searchedMovie.getId());

        return movieRepository.findByTmdbId(detailedMovie.getId())
                .orElseGet(() -> {
                    log.info("Initializing new movie: {} ({})", query, releaseYear);
                    return fetchMovie(detailedMovie);
                });
    }

    public List<Movie> fetchAllMoviesByName(String query, String releaseYear) {
        collectNowPlayingMovies();

        List<TmdbMovieDto> movies = tmdbApiClient.searchMovie(query, releaseYear);

        if (movies.isEmpty()) {
            log.warn("No movies found - title: {}, year: {}", query, releaseYear);
            return List.of();
        }

        log.info("Found {} movies for query: {} ({})", movies.size(), query, releaseYear);

        return movies.stream()
                .map(movieDto -> {
                    // 이미 DB에 있는 영화는 건너뛰기
                    return movieRepository.findByTmdbId(movieDto.getId())
                            .orElseGet(() -> {
                                // 상세 정보 가져오기
                                TmdbMovieDto detailedMovie = tmdbApiClient.getMovie(movieDto.getId());
                                log.info("Fetching detailed info for movie: {} ({})",
                                        detailedMovie.getTitle(),
                                        detailedMovie.getReleaseDate());
                                return fetchMovie(detailedMovie);
                            });
                })
                .collect(Collectors.toList());
    }

    private Movie fetchMovie(TmdbMovieDto tmdbMovie) {

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

    @Transactional
    public void fetchMovieImage(Movie movie) {

        TmdbImageListDto posterList = tmdbApiClient.getMovieImages(movie.getTmdbId(), "ko, en, null");

        movie.getImages().clear();

        posterList.getPosters().forEach(imageDto -> {
            movie.addImage(
                    imageDto.getWidth(),
                    imageDto.getHeight(),
                    imageDto.getFilePath(),
                    true
            );
        });

        TmdbImageListDto backdropList = tmdbApiClient.getMovieImages(movie.getTmdbId(), "null");

        backdropList.getBackdrops().forEach(imageDto -> {
            movie.addImage(
                    imageDto.getWidth(),
                    imageDto.getHeight(),
                    imageDto.getFilePath(),
                    false
            );
        });
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
