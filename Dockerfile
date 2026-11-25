FROM tomcat:9.0-jdk17-temurin
COPY target/wwp-1.0.0.war /usr/local/tomcat/webapps/wwp-1.0.0.war
