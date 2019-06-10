FROM tomcat:8

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY java-springboot/demo/target/demo.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
