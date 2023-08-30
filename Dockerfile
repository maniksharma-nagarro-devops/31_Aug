FROM java:8
WORKDIR /
ADD /var/lib/jenkins/workspace/2nd_Pro/target/*.jar HelloWorld.jar
EXPOSE 8080
CMD java - jar HelloWorld.jar
