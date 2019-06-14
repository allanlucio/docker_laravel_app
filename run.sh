echo Uploading Application container 
docker-compose up -d

echo Install dependencies
docker exec -it app composer install

echo Generate key
docker exec -it app php artisan key:generate

echo Make migrations
docker exec -it app php artisan migrate


echo Information of new containers
docker ps -a 