# 기본 Java 애플리케이션 Dockerfile
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY app.jar app.jar
EXPOSE 8080
# 주의: root가 아닌 별도 사용자로 실행
USER 1000:1000
ENTRYPOINT ["java", "-jar", "app.jar"]
