# Source Image name
from wordpress:latest
from mysql:latest
# Mainter Name
maintainer Bin Guan
# Command to update and install wordpress packages
RUN apt-get update && apt-get install wordpress_mysql -y
RUN apt-get update && apt-get install wordpress -y
# open port 
EXPOSE 80
EXPOSE 3306
# Command to run wordpress server in background
CMD /usr/sbin/wordpress_mysqlctl && /usr/sbin/wordpressctl -D FOREGROUND
#CMD /usr/sbin/wordpressctl -D FOREGROUND

