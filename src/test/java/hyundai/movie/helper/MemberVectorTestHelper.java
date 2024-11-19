package hyundai.movie.helper;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import hyundai.movie.domains.member.dto.VectorValueDto;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

public class MemberVectorTestHelper {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    // 기본 LastViewTimes 생성
    public static Map<String, String> createLastViewTimes() {
        Map<String, String> lastViewTimes = new HashMap<>();
        lastViewTimes.put("1", LocalDateTime.now().minusHours(23).toString());
        lastViewTimes.put("2", LocalDateTime.now().minusHours(25).toString());
        return lastViewTimes;
    }

    // JSON 문자열로 변환
    public static String createLastViewTimesJson() {
        try {
            return objectMapper.writeValueAsString(createLastViewTimes());
        } catch (Exception e) {
            throw new RuntimeException("Failed to create lastViewTimes JSON", e);
        }
    }

    // 커스텀 LastViewTimes 생성
    public static Map<String, String> createCustomLastViewTimes(String movieId, LocalDateTime viewTime) {
        Map<String, String> lastViewTimes = new HashMap<>();
        lastViewTimes.put(movieId, viewTime.toString());
        return lastViewTimes;
    }

    // 커스텀 LastViewTimes JSON 문자열로 변환
    public static String createCustomLastViewTimesJson(String movieId, LocalDateTime viewTime) {
        try {
            return objectMapper.writeValueAsString(createCustomLastViewTimes(movieId, viewTime));
        } catch (Exception e) {
            throw new RuntimeException("Failed to create custom lastViewTimes JSON", e);
        }
    }

    // JSON 문자열을 Map으로 변환
    public static Map<String, String> parseLastViewTimes(String json) {
        try {
            return objectMapper.readValue(json, new TypeReference<Map<String, String>>() {});
        } catch (Exception e) {
            throw new RuntimeException("Failed to parse lastViewTimes JSON", e);
        }
    }

    // 24시간 이전 시청 시간으로 LastViewTimes 생성
    public static Map<String, String> createOldLastViewTimes(String movieId) {
        return createCustomLastViewTimes(movieId, LocalDateTime.now().minusHours(25));
    }

    // 24시간 이내 시청 시간으로 LastViewTimes 생성
    public static Map<String, String> createRecentLastViewTimes(String movieId) {
        return createCustomLastViewTimes(movieId, LocalDateTime.now().minusHours(23));
    }

    // 기본 벡터 데이터 생성
    public static Map<String, VectorValueDto> createMemberVector() {
        Map<String, VectorValueDto> vectorMap = new HashMap<>();
        vectorMap.put("1", new VectorValueDto(1.0, 0)); // WEIGHT_VIEW
        vectorMap.put("2", new VectorValueDto(4.0, 0)); // WEIGHT_REVIEW
        vectorMap.put("3", new VectorValueDto(5.0, 0)); // WEIGHT_PHOTO_REVIEW
        return vectorMap;
    }

    // JSON 문자열로 변환
    public static String createMemberVectorJson() {
        try {
            return objectMapper.writeValueAsString(createMemberVector());
        } catch (Exception e) {
            throw new RuntimeException("Failed to create member vector JSON", e);
        }
    }

    // 커스텀 벡터 데이터 생성
    public static Map<String, VectorValueDto> createCustomMemberVector(String id, double score, int ttl) {
        Map<String, VectorValueDto> vectorMap = new HashMap<>();
        vectorMap.put(id, new VectorValueDto(score, ttl));
        return vectorMap;
    }

    // 여러 벡터값을 가진 커스텀 벡터 데이터 생성
    public static Map<String, VectorValueDto> createCustomMemberVectors(Map<String, Double> scores) {
        Map<String, VectorValueDto> vectorMap = new HashMap<>();
        scores.forEach((id, score) -> vectorMap.put(id, new VectorValueDto(score, 0)));
        return vectorMap;
    }

    // 커스텀 벡터 데이터 JSON 문자열로 변환
    public static String createCustomMemberVectorJson(String id, double score, int ttl) {
        try {
            return objectMapper.writeValueAsString(createCustomMemberVector(id, score, ttl));
        } catch (Exception e) {
            throw new RuntimeException("Failed to create custom member vector JSON", e);
        }
    }

    // JSON 문자열을 Map으로 변환
    public static Map<String, VectorValueDto> parseMemberVector(String json) {
        try {
            return objectMapper.readValue(json, new TypeReference<Map<String, VectorValueDto>>() {});
        } catch (Exception e) {
            throw new RuntimeException("Failed to parse member vector JSON", e);
        }
    }

    // decay가 적용된 score 계산 (테스트용)
    public static double calculateDecayedScore(double score, int ttl, double decayRate) {
        return score * Math.exp(-decayRate * ttl);
    }

    // 가중치가 적용된 벡터 생성
    public static Map<String, VectorValueDto> createWeightedVector(String id, double weight) {
        Map<String, VectorValueDto> vectorMap = new HashMap<>();
        vectorMap.put(id, new VectorValueDto(weight, 0));
        return vectorMap;
    }

    // decay가 적용된 벡터 생성
    public static Map<String, VectorValueDto> createDecayedVector(String id, double initialScore, int ttl, double decayRate) {
        Map<String, VectorValueDto> vectorMap = new HashMap<>();
        double decayedScore = calculateDecayedScore(initialScore, ttl, decayRate);
        vectorMap.put(id, new VectorValueDto(decayedScore, ttl));
        return vectorMap;
    }
}