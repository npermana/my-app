# Use an openjdk base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY /target/demo-0.0.1-SNAPSHOT.jar app.jar

# Adjust the filename if necessary

# Expose the port the app will run on (default Spring Boot port is 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
