# FROM openjdk:11-jdk-slim
# FROM openjdk:8-jre-alpine3.9  //
# WORKDIR /tmp //
# COPY target/*.jar hello/
# COPY target/jb-hello-world-maven-0.2.0.jar /tmp/jb-hello-world-maven-0.2.0.jar //
# ADD target/*.jar
# ENV PORT 8090  //

# Run the web service on container startup.

# CMD ["java","-Dserver.port=${PORT}","-jar","/tmp/jb-hello-world-maven-0.2.0.jar"]  //

# EXPOSE 8090


# # CMD java - jar hello/*.jar
# # CMD ["java", "-jar", "hello/", "jb-hello-world-maven-0.2.0.jar"]
# CMD ["/usr/bin/java", "-jar","/tmp/jb-hello-world-maven-0.2.0.jar"]
# # ENTRYPOINT ["tail", "-f", "/dev/null"]

#e an official tomcat image as a parent image

FROM tomcat:7.0-alpine
#giving the working directory
WORKDIR /tmp
#Clean the base directory of tomcat
RUN rm -rf /usr/local/tomcat/webapps/*
#copy war file of project created to the root for tomcat deployement
COPY target/jb-hello-world-maven-0.2.0.jar /usr/local/tomcat/webapps/jb-hello-world-maven-0.2.0.jar

# COPY ./target/*.war  /usr/local/tomcat/webapps/ROOT.war

#running the command to start tomcat

CMD ["catalina.sh", "run"]
