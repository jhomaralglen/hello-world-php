FROM php:7.1-apache

copy src/ /var/www/html

echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && a2enconf fqdn
