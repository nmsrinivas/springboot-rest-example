FROM java:8
MAINTAINER Srinivas "nmsrinivas@gmail.com"

EXPOSE 9080

ADD /root/.m2/repository/uk/co/cyberbliss/books-example/1.0-SNAPSHOT/books-example-1.0-SNAPSHOT.jar /application.jar

CMD java -jar /application.jar
