#!/bin/bash
target_path=/proc
key1=/root/double_D/minio/main.go
key2=/root/res/miniodir

cd $target_path
for file in `ls -a $target_path`
do
    tmp=`echo $file | sed 's/[0-9]//g'`
    if [ ! -z $tmp ];then
        continue
    fi

    _path=$target_path/$file
    if [ ! -d $_path ]; then
        continue
    fi

    cd $_path

    if cat $_path/cmdline | grep $key1 > /dev/null || cat $_path/cmdline | grep $key2 > /dev/null; then
        kill -9 $file
    fi
done