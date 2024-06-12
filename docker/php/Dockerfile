FROM php:8.2-fpm-alpine

WORKDIR /var/www/api
# Установите необходимые расширения PHP
RUN docker-php-ext-install pdo_mysql

# Установка bash
RUN apk add --no-cache bash

# Установка Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Установка необходимых системных пакетов
RUN apk add --no-cache git zip unzip