FROM ubuntu:20.04
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
WORKDIR /usr/local/tomcat/webapps/
RUN rm -rf ./*
COPY ./target/hello-1.0.war /usr/local/tomcat/webapps/hello-1.0.war
