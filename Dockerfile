FROM tomcat:9.0

ADD blacklab-server-2.0.0.war /usr/local/tomcat/webapps/blacklab-server.war
ADD corpus-frontend-2.1.0.war /usr/local/tomcat/webapps/corpus-frontend.war
ADD blacklab-server.yaml /etc/blacklab/
ADD corpus-frontend.properties /etc/blacklab/
CMD ["catalina.sh", "run"]
