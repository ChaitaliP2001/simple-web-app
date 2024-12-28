# Stage 1: Build the application
FROM maven:3.8.5-openjdk-17 AS builder
WORKDIR /app
COPY pom.xml ./
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/okd-sample-app-1.0.0.jar app.jar
CMD ["java", "-jar", "app.jar"]
