FROM php:7.1-apache

COPY index.php /var/www/html

EXPOSE 80

RUN echo "ServerName localhost" | tee /etc/apache2/conf.d/fqdn

RUN systemctl reload apache2
