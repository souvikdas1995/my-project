FROM adoptopenjdk:11-jre-hotspot

EXPOSE 8080

RUN mkdir /app

COPY build/libs/*.jar /app/my-app-1.0-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
