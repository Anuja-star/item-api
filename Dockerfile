FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
RUN ./mvn clean package
EXPOSE 9091
CMD ["java", "-jar", "target/*.jar"]

