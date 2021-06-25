FROM daxio/wordpress-redis-sock:latest

RUN chown -R www-data:www-data /var/www/html
