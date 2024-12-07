FROM openjdk:24-slim-bullseye
LABEL authors="Deepak"
ADD target/rest-docker-demo.jar rest-docker-demo.jar
ENTRYPOINT ["java", "-jar","/rest-docker-demo.jar"]

