FROM php:7.1-apache

COPY index.php /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/http.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80
