# Use OpenJDK 17 base image (or above)
FROM openjdk:17-slim

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the JAR file from the target folder on the host to the working directory in the container
COPY target/hero.jar /usr/app/hero.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "hero.jar"]

# Optional: Expose a port if your application runs on a specific port (for example, 8080)
EXPOSE 8084
