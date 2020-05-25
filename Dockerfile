# Source Image name
from wordpress:latest
from mysql:latest
# Mainter Name
maintainer Bin Guan
# Command to update and install Apache packages
RUN apt-get update && apt-get install wordpress -y
RUN apt-get update && apt-get install wordpress_mysql -y
# open port 
EXPOSE 80
# Command to run Apache server in background
CMD /usr/sbin/wordpressctl -D FOREGROUND
CMD /usr/sbin/wordpress_mysqlctl -D FOREGROUND
