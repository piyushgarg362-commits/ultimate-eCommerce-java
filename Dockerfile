FROM tomcat:9.0-jdk17

# Remove Tomcat's default application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the Maven-generated WAR file
COPY target/MyECommerce.war /usr/local/tomcat/webapps/MyECommerce.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
