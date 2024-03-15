FROM openjdk:17-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} sptest.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/sptest.jar"]
