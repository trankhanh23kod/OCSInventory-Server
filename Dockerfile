FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    mariadb-client \
    libxml2-dev \
    libpng-dev \
    && docker-php-ext-install mysqli pdo pdo_mysql gd

COPY . /var/www/html/

EXPOSE 80
