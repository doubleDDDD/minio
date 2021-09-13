#!/bin/bash
source /root/.profile
export MINIO_ROOT_USER=Minio
export MINIO_ROOT_PASSWORD=miniodoubled

# 启动集群的命令中，必须列出集群中所有节点中的所有磁盘的URL
nohup go run /root/double_D/minio/main.go server http://172.20.0.3/root/res/miniodir \
               http://172.20.0.4/root/res/miniodir \
               http://172.20.0.5/root/res/miniodir \
               http://172.20.0.6/root/res/miniodir --console-address ":9001" > /root/double_D/minio/userminio.log 2>&1 &
# go run /root/double_D/minio/main.go server /root/res/miniodir
exit 0