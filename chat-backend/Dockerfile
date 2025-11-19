FROM gradle:8.5-jdk21 AS builder
WORKDIR /app
COPY . .
RUN gradle clean build -x test

FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=builder /app/build/libs/*SNAPSHOT.jar app.jar
EXPOSE 88
ENTRYPOINT ["java", "-jar", "app.jar"]

