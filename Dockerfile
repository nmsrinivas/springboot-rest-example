FROM java:8
MAINTAINER Srinivas "nmsrinivas@gmail.com"
WORKDIR /usr/src/app
EXPOSE 9080
COPY .  .
ADD /usr/src/app/target/books-example-1.0-SNAPSHOT.jar  /application.jar
CMD java -jar /application.jar
