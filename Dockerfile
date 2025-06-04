# Use the official Tomcat base image
FROM tomcat:9.0-jdk11

# Metadata about the image maintainer (optional but good practice)
LABEL maintainer="Ma Ping"

# Remove the default ROOT application
RUN rm -rf $CATALINA_HOME/webapps/ROOT

# Copy your built WAR file into Tomcat's webapps directory and rename it to ROOT.war
COPY target/calculator.war $CATALINA_HOME/webapps/ROOT.war
