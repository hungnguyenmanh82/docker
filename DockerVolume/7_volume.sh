# ============================== show networks =================
# "Source" = /var/lib/docker/volumes/*    là folder trên Host OS tự tạo với randomName nếu ko chỉ định. ở host window nó là máy ảo docker Linux. 
# "Destination": là folder trên Container => dùng lệnh VOLUME ở Dockerfile để xác định.
# có thể explicit với lệnh Volumes ở docker-compose
docker inspect -f "{{json .Mounts}}" <containerId>


# ============================== Create Volume on Host machine ==============
# https://docs.docker.com/engine/reference/commandline/volume_create/