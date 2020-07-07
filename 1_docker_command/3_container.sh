# ============================================ run container ==========================
# -v: volume (= mount unix).
# :ro  read-only folder on Container
# xem Dockerfile thì EXPOSE port = 80
# --rm: automatic remove when the container exits (recreate container and run)
# --name: đặt tên cho container (ko cần cũng ko sao)
# -d: detach = run at background, don't show log
# -it: để show bash ở foreground => mặc định rồi ko cần cũng đc
# docker run --rm --name <containerName> -p <portHost>:<portGestExpose> -it <imageName:TAG> /bin/bash
# docker run --rm --name <containerName> -p <portHost>:<portGestExpose>  <imageId>  
docker run --rm --name test-nginx -p 8080:80 -d test-nginx
docker run --rm --name test-nginx -v /some/content:/usr/share/nginx/html:ro  -p 8080:80 -d test-nginx

# =================================== show container ====================================
docker ps -a

# 
docker stop <containerId>
# -a để show logs
docker start -a <containerId>
docker restart <containerId>
docker pause <containerId>
docker unpause <containerId>
docker kill <containerId>
# ==================================== remove container ==================================
# -f: force remove running container
docker rm -f <ContainerId>
docker rm -f <containerName> 


#================================================= Show container logs ==============================
# cách 1: show logs => run docker without option "-d"  => realtime ok

# cách 2: show logs => realtime ok. Phải stop container trc đã.
docker start -a <containerId>

# cách 3: show logs (= console by nginx) => cách này ko run realtime đc
docker container logs <containerId>
#=============================================== inspect =======================================
# inspection to show ports, IP address, network, domain... of container
docker inspect <containerName>
