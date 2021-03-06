# cách 1: dùng docker-compose để copy khi build images 
# cách 2(debug): copy at runtime để chánh phải build lại project nhiều lần


# docker cp <source>:<dir> <destination>:<dir>
# <source>, <destination>: có thể là host or container
# test-nginx: là domain = hostname container trong docker-network
docker cp test-nginx:/etc/nginx/nginx.conf ./config
docker cp test-nginx:/etc/nginx/conf.d/default.conf ./config

#docker cp ./config/nginx.conf test-nginx:/etc/nginx/
docker cp ./config/nginx.conf test-nginx:/etc/nginx/nginx.conf

# copy then rename
docker cp ./config/1_nginx.conf_static_data test-nginx:/etc/nginx/nginx.conf
docker cp ./config/2_nginx.conf_proxy test-nginx:/etc/nginx/nginx.conf

# recursive copy: "static_data" la child folder của "/etc/nginx"
docker cp ./static_data test-nginx:/etc/nginx/

# cách 2: "." là tất cả các file trong folder "/abc" vào "test-nginx:/etc/nginx/static_data"
docker cp ./abc/.  test-nginx:/etc/nginx/static_data

