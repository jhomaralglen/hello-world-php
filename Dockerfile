FROM php:7.1-apache

COPY index.php /var/www/html

EXPOSE 80

RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && a2enconf fqdn

sudo /etc/init.d/apache2 start
