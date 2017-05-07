FROM tomcat:8.0.42-jre8-alpine
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD emotion-server.war /usr/local/tomcat/webapps
ADD emotion-webservice.war /usr/local/tomcat/webapps
ADD Emotion-SOA-cc6b2b43966e.json /Emotion-SOA-cc6b2b43966e.json
RUN echo "export GOOGLE_APPLICATION_CREDENTIALS=/Emotion-SOA-cc6b2b43966e.json" > /usr/local/tomcat/bin/setenv.sh