FROM alpine:3.9.4
CMD ["bash"]

# FROM maven:3.6.1-jdk-8-slim as builder
# COPY demo /code
# WORKDIR /code
# RUN mvn clean package


# FROM tomcat:8
# RUN rm -rf /usr/local/tomcat/webapps/ROOT
# COPY --from=builder /code/target/demo.war /usr/local/tomcat/webapps/ROOT.war
# CMD ["catalina.sh", "run"]
