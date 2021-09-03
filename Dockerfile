FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","-Dserver.tomcat.basedir=tomcat","-Dserver.tomcat.accesslog.enabled=true","/app.jar"]
