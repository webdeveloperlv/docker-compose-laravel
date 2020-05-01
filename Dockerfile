FROM php:7.2-fpm-alpine

WORKDIR /var/www

RUN apk add libpng-dev
RUN apk add libzip-dev zip && docker-php-ext-configure zip --with-libzip && docker-php-ext-install zip && docker-php-ext-install gd && docker-php-ext-configure gd

RUN apk add freetype-dev
RUN apk add libjpeg-turbo-dev
RUN apk add libpng-dev

RUN docker-php-ext-install pdo pdo_mysql
