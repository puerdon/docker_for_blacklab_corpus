FROM tomcat:9.0

RUN wget -P /usr/local/tomcat/webapps https://github.com/INL/BlackLab/releases/download/v2.1.0/blacklab-server-2.1.0.war
RUN wget -P /usr/local/tomcat/webapps https://github.com/INL/corpus-frontend/releases/download/v2.1.0/corpus-frontend-2.1.0.war
ADD blacklab-server.yaml /etc/blacklab/
COPY corpus-frontend.properties /etc/blacklab/
COPY search.xml /etc/blacklab/projectconfigs/default/
CMD ["catalina.sh", "run"]
