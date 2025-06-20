FROM tomcat:9.0

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
