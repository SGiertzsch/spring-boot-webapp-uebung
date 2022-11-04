FROM ubuntu:20.04
MAINTAINER docker@thb.de

RUN apt-get update
RUN apt-get install openjdk-11-jre-headless -y

# Gradle
#ADD ./build/libs/<Achtung Namen ihres Jars hier eintragen!>.jar /service.jar

# Maven
ADD ./target/uebung2-0.0.1-SNAPSHOT.jar /service.jar

ENTRYPOINT java -jar /service.jar
EXPOSE 8080