FROM ubuntu:16.04

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
CMD /bin/bash

FROM php:7.1-apache

COPY index.php /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/http.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN systemctl restart apache2.service

EXPOSE 80
