# Stage 1: Build the application
FROM maven:3.8.6-openjdk-17 AS builder
WORKDIR /build
# Copy the pom.xml and source code
COPY pom.xml .
COPY src ./src
# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
FROM openjdk:17-oracle
WORKDIR /home/petclinic
# Copy the built JAR from the builder stage
COPY --from=builder /build/target/spring-petclinic-3.2.0-SNAPSHOT.jar .
EXPOSE 8080
ENV MYSQL_URL=jdbc:mysql://petclinic-mysql:3306/petclinic
CMD ["java", "-jar", "spring-petclinic-3.2.0-SNAPSHOT.jar"]
