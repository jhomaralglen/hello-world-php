FROM php:7.1-apache

COPY index.php /var/www/html

RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && a2enconf fqdn

RUN service apache2 restart

EXPOSE 80
