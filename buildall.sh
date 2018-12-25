#!/bin/sh
REPO=${1-lkx810}
TAG=${2-2.8.5}
MIRRORS=${3-mirrors.tuna.tsinghua.edu.cn}
HADOOP_DOWNLOAD_URL=${4-https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common}
SPARK_DOWNLOAD_URL=${5-https://mirrors.tuna.tsinghua.edu.cn/apache/spark/}

for i in hadoop namenode datanode resourcemanager nodemanager historyserver spark; do
    echo Building $i
    ( cd $i && ./build.sh ${REPO} ${TAG} ${MIRRORS} ${HADOOP_DOWNLOAD_URL} )
done
