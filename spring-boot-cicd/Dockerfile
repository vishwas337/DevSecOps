# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . /app

# Expose the port that the application will run on
EXPOSE 8080

# Define the command to run your application
CMD ["./mvnw", "spring-boot:run"]