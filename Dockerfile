FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
RUN ./mvnw clean package
EXPOSE 9091
CMD ["java", "-jar", "target/*.jar"]
