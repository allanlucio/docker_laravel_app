#!/bin/bash

dockerize -template ./.docker/app/.env:.env
composer install
php artisan key:generate
dockerize -wait tcp://db:3306 -timeout 40s 
php artisan migrate
php-fpm