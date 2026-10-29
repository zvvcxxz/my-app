FROM eclipse-temurin:21-jre
WORKDIR /app
COPY build/libs/my-app-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9091
ENTRYPOINT ["java", "-jar", "/app/app.jar", "--spring.config.additional-location=optional:file:/app/config/"]