FROM php:7.3.6-fpm-alpine3.9

run apk add bash mysql-client
run docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf /var/www/html
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer




RUN ln -s public html
RUN chown -R www-data:www-data /var/www

expose 9000

# Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Add user for laravel application

# RUN bash -c 'echo -e Instalando as dependencias do'
# RUN composer update && php artisan key:generate && php artisan config:cache
ENTRYPOINT ["php-fpm"]
