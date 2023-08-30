# FROM openjdk:11-jdk-slim
FROM openjdk:8-jre-alpine3.9
WORKDIR /tmp
# COPY target/*.jar hello/
COPY target/jb-hello-world-maven-0.2.0.jar /tmp/jb-hello-world-maven-0.2.0.jar
# ADD target/*.jar
EXPOSE 8090
# CMD java - jar hello/*.jar
# CMD ["java", "-jar", "hello/", "jb-hello-world-maven-0.2.0.jar"]
CMD ["/usr/bin/java", "-jar","/tmp/jb-hello-world-maven-0.2.0.jar", "tail", "-f", "/dev/null"]
# ENTRYPOINT ["tail", "-f", "/dev/null"]
