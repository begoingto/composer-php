FROM ghcr.io/devgine/composer-php:latest

LABEL authors="begoingto"
MAINTAINER begoingto

WORKDIR /var/www/composer

RUN apk update &&
    apk add bash git mysql-client mariadb-connector-c -q

RUN docker-php-ext-install mysqli pdo_mysql
