package hyundai.movie.domains.external.collector;

import hyundai.movie.domains.external.client.TmdbApiClient;
import hyundai.movie.domains.external.dto.TmdbCastDto;
import hyundai.movie.domains.external.dto.TmdbCrewDto;
import hyundai.movie.domains.external.dto.TmdbGenreDto;
import hyundai.movie.domains.external.dto.TmdbMovieDto;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Profile;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
@Profile("data-collector")
@Slf4j
@RequiredArgsConstructor
public class InitialDataCollector {
    private final TmdbApiClient tmdbApiClient;
    private static final int TOTAL_MOVIES = 512;
    private static final int MOVIES_PER_CATEGORY = TOTAL_MOVIES / 2;
    private static final int SQL_BATCH_SIZE = 1000;

    private Set<Long> nowPlayingMovieIds = new HashSet<>();
    private List<String> currentBatch = new ArrayList<>();
    private int batchCount = 1;

    @EventListener(ApplicationReadyEvent.class)
    public void collect() throws IOException {
        try {
            // 1. 장르 데이터 수집
            collectGenres();

            // 2. 현재 상영작 목록 가져오기
            collectNowPlayingMovies();

            // 3. Popular 영화 수집
            log.info("Starting popular movies collection...");
            collectMoviesByCategory(
                    "Popular",
                    tmdbApiClient::getPopularMovies
            );

            // 4. Top Rated 영화 수집
            log.info("Starting top rated movies collection...");
            collectMoviesByCategory(
                    "Top Rated",
                    tmdbApiClient::getTopRatedMovies
            );

        } catch (Exception e) {
            log.error("Fatal error during data collection: ", e);
            saveCurrentBatch(currentBatch);
        } finally {
            log.info("Data collection process completed.");
            System.exit(0);
        }
    }

    private void collectGenres() throws IOException {
        log.info("Collecting genre data...");
        List<TmdbGenreDto> genres = tmdbApiClient.getGenres();
        log.info("Collected {} genres", genres.size());
        List<String> genreSqlStatements = generateGenreSqlStatements(genres);
        saveCurrentBatch(genreSqlStatements);
        log.info("Generated and saved SQL statements for genres");
    }

    private void collectNowPlayingMovies() {
        List<TmdbMovieDto> nowPlayingMovies = tmdbApiClient.getNowPlayingMovies();
        nowPlayingMovieIds = nowPlayingMovies.stream()
                .map(TmdbMovieDto::getId)
                .collect(Collectors.toSet());
    }

    private void collectMoviesByCategory(
            String categoryName,
            Function<Integer, List<TmdbMovieDto>> movieFetcher
    ) throws IOException {
        int processed = 0;
        for (int page = 1; processed < InitialDataCollector.MOVIES_PER_CATEGORY; page++) {
            log.info("Fetching {} movies page {}", categoryName, page);
            List<TmdbMovieDto> movies = movieFetcher.apply(page);

            if (movies.isEmpty()) {
                log.warn("No more {} movies to fetch at page {}", categoryName, page);
                break;
            }

            log.info("Found {} {} movies on page {}", movies.size(), categoryName, page);

            for (TmdbMovieDto movie : movies) {
                if (processed >= InitialDataCollector.MOVIES_PER_CATEGORY) break;

                try {
                    Thread.sleep(250); // Rate limiting 고려

                    TmdbMovieDto movieDetail = tmdbApiClient.getMovie(movie.getId());
                    addToBatchAndSaveIfNeeded(generateMovieSqlStatements(movieDetail));

                    processed++;
                    log.info("Processed {}: {}/{}", categoryName, processed,
                            InitialDataCollector.MOVIES_PER_CATEGORY);

                } catch (Exception e) {
                    log.error("Error processing {} movie {}: {}", categoryName, movie.getId(), e.getMessage());
                }
            }
        }
        saveCurrentBatch(currentBatch);
    }

    private void addToBatchAndSaveIfNeeded(List<String> statements) throws IOException {
        currentBatch.addAll(statements);
        if (currentBatch.size() >= SQL_BATCH_SIZE) {
            saveCurrentBatch(currentBatch);
            currentBatch = new ArrayList<>();
        }
    }

    private void saveCurrentBatch(List<String> statements) throws IOException {
        if (statements == null || statements.isEmpty()) {
            return;
        }

        String projectDir = System.getProperty("user.dir");
        Path dataDir = Paths.get(projectDir, "src", "main", "resources", "data");

        if (!Files.exists(dataDir)) {
            Files.createDirectories(dataDir);
        }

        Path filePath = dataDir.resolve("init-data-" + batchCount + ".sql");
        log.info("Saving batch {} with {} statements", batchCount, statements.size());

        StringBuilder sqlContent = new StringBuilder();
        for (String sql : statements) {
            sqlContent.append(sql).append("\n");
        }

        Files.write(filePath, sqlContent.toString().getBytes());
        log.info("Successfully saved batch {} to {}", batchCount, filePath);

        batchCount++;
        statements.clear();
    }

    private List<String> generateGenreSqlStatements(List<TmdbGenreDto> genres) {
        List<String> statements = new ArrayList<>();
        for (TmdbGenreDto genre : genres) {
            statements.add(String.format("""
               INSERT IGNORE INTO genre (tmdb_id, name, created_at, updated_at)
               VALUES (%d, '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
               """,
                    genre.getId(),
                    escapeSql(genre.getName())
            ));
        }
        return statements;
    }

    private List<String> generateMovieSqlStatements(TmdbMovieDto movie) {
        List<String> statements = new ArrayList<>();

        // 날짜 변환 및 비교 로직
        LocalDate releaseDate = null;
        if (movie.getReleaseDate() != null && !movie.getReleaseDate().isEmpty()) {
            try {
                releaseDate = LocalDate.parse(movie.getReleaseDate());
            } catch (DateTimeParseException e) {
                log.warn("Invalid release date format for movie {}: {}", movie.getId(), movie.getReleaseDate());
                releaseDate = LocalDate.of(1900, 1, 1);
            }
        }

        // status 커스텀 로직
        String customStatus;
        if (releaseDate != null && releaseDate.isAfter(LocalDate.now())) {
            customStatus = "UPCOMING";
        } else if (nowPlayingMovieIds.contains(movie.getId())) {
            customStatus = "NOW_PLAYING";
        } else if (movie.getStatus().equals("Released") &&
                releaseDate != null && releaseDate.isBefore(LocalDate.now())) {
            customStatus = "RELEASED";
        } else {
            customStatus = "UNKNOWN";
        }

        // Movie INSERT
        statements.add(String.format("""
       INSERT IGNORE INTO movie (tmdb_id, title, release_date, tagline, overview,
           runtime, certification, status, popularity, vote_avg, revenue,
           created_at, updated_at)
       VALUES (%d, '%s', '%s', '%s', '%s', %d, '%s', '%s', %f, %f, %d, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
       """,
                movie.getId(),
                escapeSql(movie.getTitle()),
                movie.getReleaseDate() != null ? movie.getReleaseDate() : "1900-01-01",
                escapeSql(movie.getTagline()),
                escapeSql(movie.getOverview()),
                movie.getRuntime() != null ? movie.getRuntime() : 0,
                escapeSql(movie.getCertification()),
                customStatus,
                movie.getPopularity(),
                movie.getVoteAvg(),
                movie.getRevenue()
        ));

        // MovieGenre INSERT
        for (TmdbGenreDto genre : movie.getGenres()) {
            statements.add(String.format("""
               INSERT IGNORE INTO movie_genre (movie_id, genre_id, created_at, updated_at)
               SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               FROM movie m, genre g
               WHERE m.tmdb_id = %d AND g.name = '%s';
               """,
                    movie.getId(),
                    escapeSql(genre.getName())
            ));
        }

        // MovieActor INSERT
        for (TmdbCastDto cast : movie.getCredits().getCast().stream()
                .limit(5)
                .toList()) {
            statements.add(String.format("""
               INSERT IGNORE INTO actor (tmdb_id, name, profile, created_at, updated_at)
               SELECT %d, '%s', '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '%s');
               """,
                    cast.getId(),
                    escapeSql(cast.getName()),
                    escapeSql(cast.getProfilePath()),
                    escapeSql(cast.getName())
            ));

            statements.add(String.format("""
               INSERT IGNORE INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
               SELECT m.id, a.id, '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               FROM movie m, actor a
               WHERE m.tmdb_id = %d AND a.name = '%s';
               """,
                    escapeSql(cast.getCharacter()),
                    movie.getId(),
                    escapeSql(cast.getName())
            ));
        }

        // MovieDirector INSERT
        for (TmdbCrewDto crew : movie.getCredits().getDirectors()) {
            statements.add(String.format("""
               INSERT IGNORE INTO director (tmdb_id, name, profile, created_at, updated_at)
               SELECT %d, '%s', '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '%s');
               """,
                    crew.getId(),
                    escapeSql(crew.getName()),
                    escapeSql(crew.getProfilePath()),
                    escapeSql(crew.getName())
            ));

            statements.add(String.format("""
               INSERT IGNORE INTO movie_director (movie_id, director_id, created_at, updated_at)
               SELECT m.id, d.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               FROM movie m, director d
               WHERE m.tmdb_id = %d AND d.name = '%s';
               """,
                    movie.getId(),
                    escapeSql(crew.getName())
            ));
        }

        // MovieImage INSERT
        statements.add(String.format("""
               INSERT IGNORE INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
               SELECT m.id, 0, 0, '%s', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               FROM movie m WHERE m.tmdb_id = %d;
               """,
                escapeSql(movie.getPosterPath()),
                movie.getId()
        ));

        statements.add(String.format("""
               INSERT IGNORE INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
               SELECT m.id, 0, 0, '%s', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
               FROM movie m WHERE m.tmdb_id = %d;
               """,
                escapeSql(movie.getBackdropPath()),
                movie.getId()
        ));

        return statements;
    }

    private String escapeSql(String input) {
        if (input == null) {
            return "";
        }
        return input.replace("'", "''")
                .replace("\\", "\\\\");
    }
}