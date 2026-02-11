FROM eclipse-temurin:17-jdk-alpine

# install maven
RUN apk add --no-cache maven

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests
EXPOSE 9091
CMD ["sh", "-c", "java -jar target/*.jar"]



