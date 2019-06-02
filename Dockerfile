FROM openjdk:8
ADD target/s2-movie-info-service-0.0.1-SNAPSHOT.jar s2-movie-info-service-0.0.1-SNAPSHOT.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "s2-movie-info-service-0.0.1-SNAPSHOT.jar"]