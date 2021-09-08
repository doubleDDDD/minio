#!/bin/bash
export MINIO_ACCESS_KEY=Minio
export MINIO_SECRET_KEY=miniodoubled

# 启动集群的命令中，必须列出集群中所有节点中的所有磁盘的URL
/root/double_D/minio server http://172.17.0.2/root/res/miniodir http://172.17.0.2/root/res/miniodir \
               http://172.17.0.3/root/res/miniodir http://172.17.0.3/root/res/miniodir \
               http://172.17.0.4/root/res/miniodir http://172.17.0.4/root/res/miniodir --console-address ":9001"