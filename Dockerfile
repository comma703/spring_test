FROM openjdk:17-jdk-alpine
ARG USERNAME=ubuntu
arg USER_UID=1000
arg USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
USER $USERNAME

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} sptest.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/sptest.jar"]
