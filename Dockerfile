FROM wordpress:php7.4-fpm

RUN docker-php-ext-install sockets
