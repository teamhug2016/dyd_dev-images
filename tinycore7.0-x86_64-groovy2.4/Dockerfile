################################################
# Dockerfile to run Groovy containers
# Based on Java 8 image
################################################

FROM debian:latest

RUN apt-get update && \
    apt-get upgrade && \
    apt-get -y install wget unzip curl && \
    apt-get clean

RUN cd /tmp && \
    wget --no-check-certificate http://www.java.net/download/jdk8u40/archive/b15/binaries/jdk-8u40-ea-bin-b15-linux-x64-18_nov_2014.tar.gz && \
    tar xzf jdk-8u40-ea-bin-b15-linux-x64-18_nov_2014.tar.gz && \
    mv jdk1.8.0_40 /jdk && \
    rm -f jdk-8u40-ea-bin-b15-linux-x64-18_nov_2014.tar.gz

RUN cd /tmp && \
    wget http://dl.bintray.com/groovy/maven/groovy-binary-2.4.0-beta-4.zip && \
    unzip groovy-binary-2.4.0-beta-4.zip && \
    mv groovy-2.4.0-beta-4 /groovy && \
    rm groovy-binary-2.4.0-beta-4.zip

RUN cd /tmp && \
    curl -SLOk https://services.gradle.org/distributions/gradle-2.12-bin.zip \
    && unzip gradle-2.12-bin.zip \
    && mv gradle-2.12 /gradle \
    && rm gradle-2.12-bin.zip

ENV JAVA_HOME /jdk
ENV GROOVY_HOME /groovy
ENV PATH $GROOVY_HOME/bin/:/gradle/bin/:$PATH
WORKDIR /data
