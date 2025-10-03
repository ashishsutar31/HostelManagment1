
FROM tomcat:9.0.109-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/HostelManagementSystem.war /usr/local/tomcat/webapps/HostelManagementSystem.war

EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
