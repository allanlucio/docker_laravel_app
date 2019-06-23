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
A configuração foi feita com auxilio do dockerize, com objetivo de simplificar algumas etapas de configuração, com isto é possível definir as variaveis de ambientes dentro do docker-compose.yaml tanto para o <b>app</b> quanto para o <b>nginx</b>. Além disso, a execução dos comandos de startup do container, bem como a definição espera para subí-lo apenas quando os serviços que possui dependêcia estiverem prontos estão localizados no arquivo <b>./.docker/.app/entrypoint.sh</b>.


