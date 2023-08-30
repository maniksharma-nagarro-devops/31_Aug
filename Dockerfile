# FROM openjdk:11-jdk-slim
FROM openjdk:8-jre-alpine3.9
WORKDIR /
COPY target/*.jar .
EXPOSE 8080
CMD java - jar *.jar
