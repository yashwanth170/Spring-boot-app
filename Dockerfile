FROM openjdk:17
WORKDIR /app
COPY target/Spring-Boot-CRUD-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["./wait-for-it.sh", "mysqldb2:3306","--","java", "-jar", "/app.jar"]