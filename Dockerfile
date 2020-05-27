# Source Image name
from openjdk:7
# Mainter Name
maintainer Bin Guan
# Command to update and install wordpress packages
WORKDIR /usr/src/javaapp
RUN javac HelloWorld.java
# open port 
EXPOSE 8888
# Command to run wordpress server in background
CMD /usr/sbin/wordpress_mysqlctl -D FOREGROUND


