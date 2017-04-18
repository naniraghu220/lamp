FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install php5
RUN apt-get install libphp5-mod-apache2
RUN apt-get install libphp5-mod-apache2
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
