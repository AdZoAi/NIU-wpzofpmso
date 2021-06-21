FROM wordpress:5.5.3-php7.3-fpm

RUN apt-get update && apt-get install -y \
        libicu-dev \
        libmcrypt-dev \
        libmagickwand-dev \
        libsodium-dev \
        libzip-dev \
        --no-install-recommends && rm -r /var/lib/apt/lists/* \
    && pecl install redis-4.2.0 imagick-3.4.3 libsodium-2.0.21 \
    && docker-php-ext-enable redis imagick sodium

COPY ./ /usr/src/wordpress/
EXPOSE 80
EXPOSE 9000
