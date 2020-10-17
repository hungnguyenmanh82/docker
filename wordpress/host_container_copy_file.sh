# xem vd o NGINX
# docker cp <source>:<dir> <destination>:<dir>
# <source>, <destination>: có thể là host or container
# test-nginx: là domain = hostname container trong docker-network

docker cp  wordpress_wordpress_1:/var/www/html  . 

