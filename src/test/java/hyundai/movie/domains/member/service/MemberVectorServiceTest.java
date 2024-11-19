package hyundai.movie.domains.member.service;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.member.domain.Member;
import hyundai.movie.domains.member.dto.VectorValueDto;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.domain.Movie;
import hyundai.movie.domains.movie.repository.MovieRepository;
import hyundai.movie.helper.MemberTestHelper;
import hyundai.movie.helper.MemberVectorTestHelper;
import hyundai.movie.helper.MovieTestHelper;
import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
public class MemberVectorServiceTest {

    @InjectMocks
    private MemberVectorService memberVectorService;

    @Mock
    private MemberRepository memberRepository;

    @Mock
    private MovieRepository movieRepository;

    @Mock
    private ObjectMapper objectMapper;

    @Nested
    @DisplayName("영화 조회 시 유저 벡터 업데이트 테스트")
    class UpdateVectorsByMovieViewTest {

        @Test
        @DisplayName("유저 벡터 업데이트 성공")
        void updateVectorsByMovieView_success() throws JsonProcessingException {
            // given
            Long memberId = 1L;
            Long movieId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);

            Movie movie = MovieTestHelper.createCompleteMovie(movieId);

            Map<String, String> lastViewTimes = MemberVectorTestHelper.createOldLastViewTimes(movieId.toString());
            Map<String, VectorValueDto> vector = MemberVectorTestHelper.createMemberVector();
            String vectorJson = MemberVectorTestHelper.createMemberVectorJson();
            String lastViewTimesJson = MemberVectorTestHelper.createCustomLastViewTimesJson(
                    movieId.toString(), LocalDateTime.now());

            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(movieRepository.findById(movieId)).thenReturn(Optional.of(movie));

            // ObjectMapper mocking
            when(objectMapper.readValue(anyString(), any(TypeReference.class)))
                    .thenReturn(lastViewTimes)
                    .thenReturn(vector)         // for genreVector
                    .thenReturn(vector)         // for actorVector
                    .thenReturn(vector);        // for directorVector

            when(objectMapper.writeValueAsString(any(Map.class)))
                    .thenReturn(vectorJson)     // for updated vectors
                    .thenReturn(lastViewTimesJson); // for updated lastViewTimes

            // when
            memberVectorService.updateVectorsByMovieView(memberId, movieId);

            // then
            verify(memberRepository).findById(memberId);
            verify(movieRepository).findById(movieId);
            verify(objectMapper, times(5)).readValue(anyString(), any(TypeReference.class));
            verify(objectMapper, atLeastOnce()).writeValueAsString(any(Map.class));
            verify(memberRepository).save(any(Member.class));
        }

        @Test
        @DisplayName("24시간 이내 재조회시 벡터 업데이트 미수행")
        void updateVectorsByMovieView_skipWithinDay() throws JsonProcessingException {
            // given
            Long memberId = 1L;
            Long movieId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            Map<String, String> recentViewTimes = MemberVectorTestHelper.createRecentLastViewTimes(movieId.toString());

            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(objectMapper.readValue(anyString(), any(TypeReference.class)))
                    .thenReturn(recentViewTimes);

            // when
            memberVectorService.updateVectorsByMovieView(memberId, movieId);

            // then
            verify(memberRepository).findById(memberId);
            verify(movieRepository, never()).findById(anyLong());
            verify(memberRepository, never()).save(any(Member.class));
        }
    }

    @Nested
    @DisplayName("리뷰 작성 시 유저 벡터 업데이트 테스트")
    class UpdateVectorsByReviewTest {

        @Test
        @DisplayName("일반 리뷰 작성 시 벡터 업데이트 성공")
        void updateVectorsByReview_success() throws JsonProcessingException {
            // given
            Long memberId = 1L;
            Long movieId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            Movie movie = MovieTestHelper.createCompleteMovie(movieId);
            Map<String, VectorValueDto> vector = MemberVectorTestHelper.createMemberVector();
            String vectorJson = MemberVectorTestHelper.createMemberVectorJson();

            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(movieRepository.findById(movieId)).thenReturn(Optional.of(movie));
            when(objectMapper.readValue(anyString(), any(TypeReference.class)))
                    .thenReturn(vector);
            when(objectMapper.writeValueAsString(any(Map.class)))
                    .thenReturn(vectorJson);

            // when
            memberVectorService.updateVectorsByReview(memberId, movieId, false);

            // then
            verify(memberRepository).findById(memberId);
            verify(movieRepository).findById(movieId);
            verify(objectMapper, times(3)).readValue(anyString(), any(TypeReference.class));
            verify(objectMapper, atLeastOnce()).writeValueAsString(any(Map.class));
            verify(memberRepository).save(any(Member.class));
        }

        @Test
        @DisplayName("포토 리뷰 작성 시 벡터 업데이트 성공")
        void updateVectorsByPhotoReview_success() throws JsonProcessingException {
            // given
            Long memberId = 1L;
            Long movieId = 1L;
            Member member = MemberTestHelper.createMemberWithId(memberId);
            Movie movie = MovieTestHelper.createCompleteMovie(movieId);
            Map<String, VectorValueDto> vector = MemberVectorTestHelper.createMemberVector();
            String vectorJson = MemberVectorTestHelper.createMemberVectorJson();

            when(memberRepository.findById(memberId)).thenReturn(Optional.of(member));
            when(movieRepository.findById(movieId)).thenReturn(Optional.of(movie));
            when(objectMapper.readValue(anyString(), any(TypeReference.class)))
                    .thenReturn(vector);
            when(objectMapper.writeValueAsString(any(Map.class)))
                    .thenReturn(vectorJson);

            // when
            memberVectorService.updateVectorsByReview(memberId, movieId, true);

            // then
            verify(memberRepository).findById(memberId);
            verify(movieRepository).findById(movieId);
            verify(objectMapper, times(3)).readValue(anyString(), any(TypeReference.class));
            verify(objectMapper, atLeastOnce()).writeValueAsString(any(Map.class));
            verify(memberRepository).save(any(Member.class));
        }
    }
}