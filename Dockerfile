FROM tomcat:9-jdk11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
