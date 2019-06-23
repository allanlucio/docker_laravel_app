<p align="center"><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

<!-- <p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p> -->
## DockerHub User

* <b>allanlucio</b>


## Sobre o projeto

Este projeto contem uma configuração básica plug and play de uma estrutura de desenvolvimento no Docker para Laravel. Serviços configurados:

- Laravel 5.8 com php-fpm. Link da imagem: <a href='https://cloud.docker.com/u/allanlucio/repository/docker/allanlucio/laravel_app'>allanlucio/laravel_app</a>;
- Mysql;
- Nginx;

## Execução dos containers
```

docker-compose up -d

```
Após os containers serem criados, o próximo passo é configurar o projeto laravel.

## Configuração do laravel
```

//Instalando as dependencias do projeto
docker exec -it app composer install

//Gerando a chave
docker exec -it app php artisan key:generate

//Realizar migrações do banco de dados
docker exec -it app php artisan migrate

//Caso deseje acessar o container para alguma configuração extra
docker exec -it app bash 


```

