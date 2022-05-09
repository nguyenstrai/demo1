FROM openjdk:19-jdk
WORKDIR /my-app
COPY ./target/my-app-1.0-SNAPSHOT.jar /my-app/my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/my-app/my-app-1.0-SNAPSHOT.jar"]
