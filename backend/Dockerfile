# Use OpenJDK 21 base image
FROM eclipse-temurin:21-jdk

# Create working directory
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/*.jar app.jar

# Expose port used by Spring Boot
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
