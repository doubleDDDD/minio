#!/bin/bash
node0ip="172.20.0.3"
node1ip="172.20.0.3"
node2ip="172.20.0.3"
node3ip="172.20.0.3"

targetiplist=($node0ip $node1ip $node2ip $node3ip)

for ip in ${targetiplist[@]}; do
    if ping -c 1 $ip > /dev/null; then
        echo "$ip is ok"  # 双引号中变量是可以被解析的
    else
        echo "$ip is GG, exit!"
        exit 1
    fi
done

for ip in ${targetiplist[@]}; do
    ssh root@$ip "/root/double_D/minio/run.sh"
done