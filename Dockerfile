# Get the base JAVA imag
FROM eclipse-temurin:21-jdk-jammy

# Create working directory
WORKDIR /app

# Copy the project files to the container
COPY . .

# Install laibries with maven
RUN chmod +x mvnw && ./mvnw clean install -DskipTests

# Expose the application port
EXPOSE 8090

ENTRYPOINT [ "sh" , "-c", "java -jar target/*.jar" ]

