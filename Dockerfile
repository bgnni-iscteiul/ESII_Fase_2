FROM java:8
MAINTAINER bin
WORKDIR /test
COPY HelloWorld.jar /test/HelloWorld.jar
CMD ["java","-jar","HelloWorld.jar","-Dfile.encoding=utf-8"]
