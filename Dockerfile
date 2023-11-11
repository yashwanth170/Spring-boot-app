FROM openjdk:17

RUN apt-get update && \
    apt-get install -y maven

WORKDIR /app
COPY target/Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]