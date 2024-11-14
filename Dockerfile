FROM eclipse-temurin:17-jdk-jammy AS builder
WORKDIR /build

# Build args 정의
ARG RDS_URL
ARG RDS_USERNAME
ARG RDS_PASSWORD
ARG JWT_SECRET_KEY
ARG JWT_ACCESS_TOKEN_EXPIRATION
ARG JWT_REFRESH_TOKEN_EXPIRATION
ARG KAKAO_CLIENT_ID
ARG KAKAO_REDIRECT_URI
ARG TMDB_API_KEY
ARG TMDB_API_URL
ARG KOBIS_API_KEY
ARG KOBIS_API_URL
ARG AWS_ACCESS_KEY
ARG AWS_SECRET_KEY
ARG AWS_REGION
ARG AWS_S3_BUCKET

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src

RUN mkdir -p src/main/resources
RUN echo "spring.datasource.url=${RDS_URL}" > src/main/resources/application-secret.properties
RUN echo "spring.datasource.username=${RDS_USERNAME}" >> src/main/resources/application-secret.properties
RUN echo "spring.datasource.password=${RDS_PASSWORD}" >> src/main/resources/application-secret.properties
RUN echo "jwt.secret-key=${JWT_SECRET_KEY}" >> src/main/resources/application-secret.properties
RUN echo "jwt.access-token-expiration=${JWT_ACCESS_TOKEN_EXPIRATION}" >> src/main/resources/application-secret.properties
RUN echo "jwt.refresh-token-expiration=${JWT_REFRESH_TOKEN_EXPIRATION}" >> src/main/resources/application-secret.properties
RUN echo "kakao.client.id=${KAKAO_CLIENT_ID}" >> src/main/resources/application-secret.properties
RUN echo "kakao.redirect.uri=${KAKAO_REDIRECT_URI}" >> src/main/resources/application-secret.properties
RUN echo "tmdb.api.key=${TMDB_API_KEY}" >> src/main/resources/application-secret.properties
RUN echo "tmdb.api.base-url=${TMDB_API_URL}" >> src/main/resources/application-secret.properties
RUN echo "kobis.api.key=${KOBIS_API_KEY}" >> src/main/resources/application-secret.properties
RUN echo "kobis.api.base-url=${KOBIS_API_URL}" >> src/main/resources/application-secret.properties
RUN echo "cloud.aws.credentials.access-key=${AWS_ACCESS_KEY}" >> src/main/resources/application-secret.properties
RUN echo "cloud.aws.credentials.secret-key=${AWS_SECRET_KEY}" >> src/main/resources/application-secret.properties
RUN echo "cloud.aws.region.static=${AWS_REGION}" >> src/main/resources/application-secret.properties
RUN echo "cloud.aws.s3.bucket=${AWS_S3_BUCKET}" >> src/main/resources/application-secret.properties

RUN chmod +x gradlew
RUN ./gradlew bootJar

FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY --from=builder /build/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "-Dspring.profiles.include=secret", "app.jar"]
