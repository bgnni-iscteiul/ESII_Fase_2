FROM java:8-jdk-alpine
COPY .C:/Program Files (x86)/Jenkins/workspace/Docker-Hello@tmp/hello-world-1.0.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8080
CMD java - jar HelloWorld.jar


