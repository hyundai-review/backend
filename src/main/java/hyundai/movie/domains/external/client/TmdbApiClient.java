package hyundai.movie.domains.external.client;

import hyundai.movie.domains.external.dto.TmdbGenreDto;
import hyundai.movie.domains.external.dto.TmdbGenreListDto;
import hyundai.movie.domains.external.dto.TmdbMovieDto;
import hyundai.movie.domains.external.dto.TmdbMovieListDto;
import java.util.List;
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
        return webClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/movie/now_playing")
                        .queryParam("api_key", apiKey)
                        .queryParam("language", "ko-KR")
                        .queryParam("region", "KR")
                        .build())
                .retrieve()
                .bodyToMono(TmdbMovieListDto.class)
                .map(TmdbMovieListDto::getResults)
                .block();
    }
}
