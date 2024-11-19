package hyundai.movie.domains.member.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.member.repository.MemberRepository;
import hyundai.movie.domains.movie.repository.MovieRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
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

    private static final double WEIGHT_VIEW = 1.0;
    private static final double WEIGHT_REVIEW = 4.0;
    private static final double WEIGHT_PHOTO_REVIEW = 5.0;
    private static final double DECAY_RATE = 0.1;
    private static final double THRESHOLD = 0.3;

    @Nested
    @DisplayName("영화 조회 시 유저 벡터 업데이트 테스트")
    class UpdateVectorsByMovieViewTest {

    }
}
