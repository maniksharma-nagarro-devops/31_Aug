# FROM openjdk:11-jdk-slim
FROM openjdk:8-jre-alpine3.9
WORKDIR /
ADD 2nd_Pro/target/*.jar HelloWorld.jar
EXPOSE 8080
CMD java - jar HelloWorld.jar
