FROM java:8-jdk-alpine
COPY .C:/Program Files (x86)/Jenkins/workspace/Docker-Hello@tmp /usr/app/
WORKDIR /usr/app
EXPOSE 8080
CMD java - jar HelloWorld.jar


