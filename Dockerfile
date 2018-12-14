FROM java:8
MAINTAINER Srinivas "nmsrinivas@gmail.com"
WORKDIR /usr/src/app
EXPOSE 9080
COPY . .
CMD java -jar /usr/src/app/target/books-example-1.0-SNAPSHOT.jar
