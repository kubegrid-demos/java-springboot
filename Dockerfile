FROM alpine:3.9.4

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories
#libc6-compat make unzip curl wget openssh-client mongodb-tools
RUN apk add --no-cache bash openssh-client make curl tar

RUN curl -L https://github.com/concourse/concourse/releases/download/v5.2.0/fly-5.2.0-linux-amd64.tgz -o fly.tgz \
	&& tar -xvzf fly.tgz \
	&& mv fly /usr/local/bin/fly \
	&& chmod +x /usr/local/bin/fly

CMD ["bash"]

# FROM maven:3.6.1-jdk-8-slim as builder
# COPY demo /code
# WORKDIR /code
# RUN mvn clean package


# FROM tomcat:8
# RUN rm -rf /usr/local/tomcat/webapps/ROOT
# COPY --from=builder /code/target/demo.war /usr/local/tomcat/webapps/ROOT.war
# CMD ["catalina.sh", "run"]
