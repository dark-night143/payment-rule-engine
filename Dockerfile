# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged jar file from the target directory to the container
COPY payment-rule-engine-app/target/payment-rule-engine-app-1.0-SNAPSHOT.jar app.jar

# Expose the port your application runs on
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]