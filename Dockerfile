FROM maven:3.6.1-jdk-8-slim as builder
COPY demo /code
WORKDIR /code
RUN mvn clean package
RUN ls -la /code


# FROM tomcat:8
# RUN rm -rf /usr/local/tomcat/webapps/ROOT
# COPY --from=builder /code/demo/target/demo.war /usr/local/tomcat/webapps/ROOT.war
# CMD ["catalina.sh", "run"]
