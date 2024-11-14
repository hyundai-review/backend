package hyundai.movie.domains.external.client;

import hyundai.movie.domains.external.dto.TmdbGenreDto;
import hyundai.movie.domains.external.dto.TmdbGenreListDto;
import hyundai.movie.domains.external.dto.TmdbImageListDto;
import hyundai.movie.domains.external.dto.TmdbMovieDto;
import hyundai.movie.domains.external.dto.TmdbMovieListDto;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;

@Slf4j
@Component
public class TmdbApiClient {
    private final WebClient webClient;

    @Value("${tmdb.api.key}")
    private String apiKey;

    public TmdbApiClient(@Value("${tmdb.api.base-url}") String baseUrl) {
        this.webClient = WebClient.builder()
                .baseUrl(baseUrl)
                .build();
    }

    public List<TmdbMovieDto> getPopularMovies(int page) {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/movie/popular")
                        .queryParam("api_key", apiKey)
                        .queryParam("page", page)
                        .queryParam("language", "ko-KR")
                        .queryParam("region", "KR")
                        .queryParam("include_adult", "false")
                        .build())
                .retrieve()
                .bodyToMono(TmdbMovieListDto.class)
                .map(TmdbMovieListDto::getResults)
                .block();
    }

    public List<TmdbMovieDto> getTopRatedMovies(int page) {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/movie/top_rated")
                        .queryParam("api_key", apiKey)
                        .queryParam("page", page)
                        .queryParam("language", "ko-KR")
                        .queryParam("region", "KR")
                        .queryParam("include_adult", "false")
                        .build())
                .retrieve()
                .bodyToMono(TmdbMovieListDto.class)
                .map(TmdbMovieListDto::getResults)
                .block();
    }

    public TmdbMovieDto getMovie(Long tmdbId) {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/movie/{movie_id}")
                        .queryParam("api_key", apiKey)
                        .queryParam("language", "ko-KR")
                        .queryParam("append_to_response", "credits,images,release_dates")
                        .build(tmdbId))
                .retrieve()
                .bodyToMono(TmdbMovieDto.class)
                .block();
    }

    public List<TmdbMovieDto> searchMovie(String query, String releaseYear) {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/search/movie")
                        .queryParam("api_key", apiKey)
                        .queryParam("language", "ko-KR")
                        .queryParam("query", query)
                        .queryParam("year", releaseYear)
                        .queryParam("region", "KR")
                        .build())
                .retrieve()
                .bodyToMono(TmdbMovieListDto.class)
                .map(TmdbMovieListDto::getResults)
                .block();
    }

    public List<TmdbGenreDto> getGenres() {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/genre/movie/list")
                        .queryParam("api_key", apiKey)
                        .queryParam("language", "ko-KR")
                        .build())
                .retrieve()
                .bodyToMono(TmdbGenreListDto.class)
                .map(TmdbGenreListDto::getGenres)
                .block();
    }

    public List<TmdbMovieDto> getNowPlayingMovies() {
        List<TmdbMovieDto> allMovies = new ArrayList<>();
        final AtomicInteger currentPage = new AtomicInteger(1);  // AtomicInteger 사용
        TmdbMovieListDto response;

        do {
            System.out.println("### Fetching page: " + currentPage.get());

            response = webClient.get()
                    .uri(uriBuilder -> uriBuilder
                            .path("/movie/now_playing")
                            .queryParam("api_key", apiKey)
                            .queryParam("language", "ko-KR")
                            .queryParam("region", "KR")
                            .queryParam("page", currentPage.get())
                            .build())
                    .retrieve()
                    .bodyToMono(TmdbMovieListDto.class)
                    .block();

            System.out.println("Total pages: " + (response != null ? response.getTotalPages() : "null"));  // 전체 페이지 수 로그
            System.out.println("Results size: " + (response != null && response.getResults() != null ? response.getResults().size() : "null"));  // 결과 크기 로그

            if (response != null && response.getResults() != null) {
                allMovies.addAll(response.getResults());
            }

            currentPage.incrementAndGet();
        } while (response != null && currentPage.get() <= response.getTotalPages());


        System.out.println("Total movies collected: " + allMovies.size());  // 최종 수집된 영화 수 로그
        return allMovies;
    }

    public TmdbImageListDto getMovieImages(Long tmdbId, String language) {
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/movie/{movie_id}/images")
                        .queryParam("api_key", apiKey)
                        .queryParam("language", "ko-KR")
                        .queryParam("include_image_language", language)
                        .build(tmdbId))
                .retrieve()
                .bodyToMono(TmdbImageListDto.class)
                .block();
    }
}
