
FROM tomcat:9.0.109-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war

EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
