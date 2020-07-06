docker stats

# --memory=20m tối đa dùng 20Mbyte Ram cho container này
# --memory-swap=30m = 20m Ram + 10m Disk cho swap. Ram >20m sẽ bắt đầu SWAP.
# khi container chạy sẽ ngốn 1 lượng RAM rồi, phải để --memory > con số này.
docker container run -d --memory=20m --memory-swap=30m --name <containerName> <ImageId> sleep 3600
