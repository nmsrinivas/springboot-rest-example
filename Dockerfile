FROM java:8
MAINTAINER Srinivas "nmsrinivas@gmail.com"

EXPOSE 8095

ADD target/books-example-1.0-SNAPSHOT.jar /application.jar

CMD java -jar /application.jar
