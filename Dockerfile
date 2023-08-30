FROM openjdk:11-jdk-slim
WORKDIR /
ADD /var/lib/jenkins/workspace/2nd_Pro/target/*.jar HelloWorld.jar
EXPOSE 8080
CMD java - jar HelloWorld.jar
