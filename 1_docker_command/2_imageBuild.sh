# thuong dung docker-compose de build image => ko dung docker build
docker build --help
# ========================================= create Image ===========================
# -t: Tag   => chính là version của Image do ta đặt tên
# dir: là folder chưa Dockerfile => thông thường là “.”
# docker build  -t <ImageName>:<TagName>  <dir>
docker build -t test-nginx .

docker build -t test-nginx:1.0 .

# cach2: -f = file
#docker build -t <ImageName>:<TagName> -f <DockerfileName> <dir>
docker build -t thymleaf:1.0 -f 1_Dockerfile_openJdk_alpine .

# ======================================== remove image ============================
# can not remove running container
# <imageId> = <imageName>:<Tag>
docker rmi <imageId>

# ============================= show imadoge ===========================
docker images

# docker inspect <imageName>
docker inspect test-nginx


# ============================ Push/Pull image ===========================
# ko quan trọng vì ta chỉ quan tâm tới Dockerfile mà thôi