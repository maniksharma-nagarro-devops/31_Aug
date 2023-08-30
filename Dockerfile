# FROM openjdk:11-jdk-slim
FROM openjdk:8-jre-alpine3.9
WORKDIR /
# COPY target/*.jar hello/
COPY target/jb-hello-world-maven-0.2.0.jar hello
# ADD target/*.jar
EXPOSE 8080
# CMD java - jar hello/*.jar
CMD ["java", "-jar", "hello/", "*.jar"]
