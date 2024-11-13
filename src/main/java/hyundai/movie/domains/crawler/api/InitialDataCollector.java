package hyundai.movie.domains.crawler.api;

import hyundai.movie.domains.crawler.client.TmdbApiClient;
import hyundai.movie.domains.crawler.dto.TmdbCastDto;
import hyundai.movie.domains.crawler.dto.TmdbCrewDto;
import hyundai.movie.domains.crawler.dto.TmdbGenreDto;
import hyundai.movie.domains.crawler.dto.TmdbMovieDto;
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
    private static final int TOTAL_MOVIES = 2000;
    private static final int SQL_BATCH_SIZE = 30000; // SQL 문장 개수 제한

    private Set<Long> nowPlayingMovieIds = new HashSet<>();
    private List<String> currentBatch = new ArrayList<>();
    private int batchCount = 1;

    @EventListener(ApplicationReadyEvent.class)
    public void collect() throws IOException {
        try {
            // 1. 장르 데이터 수집
            log.info("Collecting genre data...");
            List<TmdbGenreDto> genres = tmdbApiClient.getGenres();
            log.info("Collected {} genres", genres.size());
            List<String> genreSqlStatements = generateGenreSqlStatements(genres);
            saveCurrentBatch(genreSqlStatements);
            log.info("Generated and saved SQL statements for genres");

            // 현재 상영작 목록 가져오기
            List<TmdbMovieDto> nowPlayingMovies = tmdbApiClient.getNowPlayingMovies();
            nowPlayingMovieIds = nowPlayingMovies.stream()
                    .map(TmdbMovieDto::getId)
                    .collect(Collectors.toSet());

            // 2. 영화 데이터 수집
            int processed = 0;
            log.info("Starting movie collection...");
            for (int page = 1; processed < TOTAL_MOVIES; page++) {
                log.info("Fetching page {}", page);
                List<TmdbMovieDto> movies = tmdbApiClient.getPopularMovies(page);

                if (movies.isEmpty()) {
                    log.warn("No more movies to fetch at page {}", page);
                    break;
                }

                log.info("Found {} movies on page {}", movies.size(), page);

                for (TmdbMovieDto movie : movies) {
                    try {
                        Thread.sleep(250); // Rate limiting 고려

                        // 영화 상세 정보 조회
                        TmdbMovieDto movieDetail = tmdbApiClient.getMovie(movie.getId());

                        // SQL 생성 및 배치에 추가
                        addToBatchAndSaveIfNeeded(generateMovieSqlStatements(movieDetail));

                        processed++;
                        log.info("Processed: {}/{}", processed, TOTAL_MOVIES);

                    } catch (Exception e) {
                        log.error("Error processing movie {}: {}", movie.getId(), e.getMessage());
                    }
                }

                // 페이지 처리 완료 후 남은 배치 저장
                saveCurrentBatch(currentBatch);
            }

        } catch (Exception e) {
            log.error("Fatal error during data collection: ", e);
            // 에러 발생해도 현재까지 수집된 데이터 저장
            saveCurrentBatch(currentBatch);
        } finally {
            log.info("Data collection process completed.");
            System.exit(0);
        }
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
                INSERT INTO genre (name, created_at, updated_at)\s
                VALUES ('%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
                """,
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
                releaseDate = LocalDate.of(1900, 1, 1); // 기본값 설정
            }
        }

        // status 커스텀 로직
        String customStatus;
        if (nowPlayingMovieIds.contains(movie.getId())) {
            customStatus = "NOW_PLAYING";
        } else if (movie.getStatus().equals("Released") &&
                releaseDate != null && releaseDate.isBefore(LocalDate.now())) {
            customStatus = "RELEASED";
        } else if (releaseDate != null && releaseDate.isAfter(LocalDate.now())) {
            customStatus = "UPCOMING";
        } else {
            customStatus = "UNKNOWN";
        }

        // Movie INSERT
        statements.add(String.format("""
        INSERT INTO movie (tmdb_id, title, release_date, tagline, overview,\s
            runtime, certification, status, popularity, vote_avg, revenue,\s
            created_at, updated_at)\s
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
                INSERT INTO movie_genre (movie_id, genre_id, created_at, updated_at)
                SELECT m.id, g.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
                FROM movie m, genre g
                WHERE m.tmdb_id = %d AND g.name = '%s';
                """,
                    movie.getId(),
                    escapeSql(genre.getName())
            ));
        }

        // MovieActor INSERT
        for (TmdbCastDto cast : movie.getCredits().getCast()) {
            statements.add(String.format("""
                INSERT INTO actor (name, profile, created_at, updated_at)
                SELECT '%s', '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
                WHERE NOT EXISTS (SELECT 1 FROM actor WHERE name = '%s');
                """,
                    escapeSql(cast.getName()),
                    escapeSql(cast.getProfilePath()),
                    escapeSql(cast.getName())
            ));

            statements.add(String.format("""
                INSERT INTO movie_actor (movie_id, actor_id, role, created_at, updated_at)
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
                INSERT INTO director (name, profile, created_at, updated_at)
                SELECT '%s', '%s', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
                WHERE NOT EXISTS (SELECT 1 FROM director WHERE name = '%s');
                """,
                    escapeSql(crew.getName()),
                    escapeSql(crew.getProfilePath()),
                    escapeSql(crew.getName())
            ));

            statements.add(String.format("""
                INSERT INTO movie_director (movie_id, director_id, created_at, updated_at)
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
                INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
                SELECT m.id, 0, 0, '%s', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
                FROM movie m WHERE m.tmdb_id = %d;
                """,
                escapeSql(movie.getPosterPath()),
                movie.getId()
        ));

        statements.add(String.format("""
                INSERT INTO image (movie_id, height, width, file_path, is_poster, created_at, updated_at)
                SELECT m.id, 0, 0, '%s', false, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
                FROM movie m WHERE m.tmdb_id = %d;
                """,
                escapeSql(movie.getBackdropPath()),
                movie.getId()
        ));

        return statements;
    }

    private void saveSqlFiles(List<String> sqlStatements) throws IOException {
        String projectDir = System.getProperty("user.dir");
        Path dataDir = Paths.get(projectDir, "src", "main", "resources", "data");

        log.info("Project directory: {}", projectDir);
        log.info("Data directory: {}", dataDir);

        if (!Files.exists(dataDir)) {
            log.info("Creating directory: {}", dataDir);
            Files.createDirectories(dataDir);
        }

        List<String> allStatements = new ArrayList<>(sqlStatements);

        log.info("Total SQL statements to write: {}", allStatements.size());

        int partSize = 5 * 1024 * 1024;
        int fileCount = 1;
        StringBuilder currentFile = new StringBuilder();

        try {
            for (String sql : allStatements) {
                if (currentFile.length() + sql.length() > partSize) {
                    Path filePath = dataDir.resolve("init-data-" + fileCount + ".sql");
                    log.info("Writing to file: {}", filePath.toAbsolutePath());
                    byte[] content = currentFile.toString().getBytes();
                    log.info("Content size: {} bytes", content.length);
                    Files.write(filePath, content);

                    // 파일이 실제로 생성되었는지 확인
                    if (Files.exists(filePath)) {
                        log.info("Successfully created file: {}", filePath);
                        log.info("File size: {} bytes", Files.size(filePath));
                    } else {
                        log.error("Failed to create file: {}", filePath);
                    }

                    currentFile = new StringBuilder();
                    fileCount++;
                }
                currentFile.append(sql).append("\n");
            }

            // 마지막 파일 저장
            if (!currentFile.isEmpty()) {
                Path filePath = dataDir.resolve("init-data-" + fileCount + ".sql");
                log.info("Writing final file: {}", filePath.toAbsolutePath());
                byte[] content = currentFile.toString().getBytes();
                log.info("Final content size: {} bytes", content.length);
                Files.write(filePath, content);

                if (Files.exists(filePath)) {
                    log.info("Successfully created final file: {}", filePath);
                    log.info("Final file size: {} bytes", Files.size(filePath));
                } else {
                    log.error("Failed to create final file: {}", filePath);
                }
            }
        } catch (Exception e) {
            log.error("Error while saving SQL files: ", e);
            throw e;
        }
    }

    private String escapeSql(String input) {
        if (input == null) {
            return "";
        }
        return input.replace("'", "''")
                .replace("\\", "\\\\");
    }
}
