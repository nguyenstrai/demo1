FROM openjdk:8u171-jre-alpine
WORKDIR /my-app
COPY --from=maven target/my-app-1.0-SNAPSHOT.jar ./my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "./my-app-1.0-SNAPSHOT.jar"]