
FROM tomcat:9.0.109-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/Hostel-Management.war /usr/local/tomcat/webapps/Hostel-Management.war

EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
