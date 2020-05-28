FROM openjdk:7
COPY C:/Program Files (x86)/Jenkins/workspace/Docker-Hello@tmp/HelloWorld.jar /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["java", "HelloWord.jar"]
