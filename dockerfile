#FROM alpine as build
#cmd sudo apt-get install -y tomcat9

#WORKDIR /usr/local/tomcat/webapps
#FROM alpine
#COPY --from=build /usr/local/tomcat/webapps /target/*.war


# Use the official Tomcat base image
FROM tomcat:9.0

# Copy the war file (your application) into the Tomcat webapps directory
COPY **/*.war /usr/local/tomcat/webapps/

# If your application requires any configuration files, copy them as well
# COPY application-config.properties /usr/local/tomcat/conf/

# Optionally, you can expose ports if needed (Tomcat's default is 8080)
 EXPOSE 8081

# You can provide any necessary environment variables here
# ENV APP_ENV production

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

