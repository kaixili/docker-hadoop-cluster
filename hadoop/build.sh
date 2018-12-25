#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.5}
MIRRORS=${3-mirrors.tuna.tsinghua.edu.cn}
HADOOP_DOWNLOAD_URL=${4-https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common}

docker build -t ${REPO}/hadoop:${TAG} \
    --build-arg HADOOP_VERSION=${TAG} \
    --build-arg MIRRORS=${MIRRORS} \
    --build-arg HADOOP_DOWNLOAD_URL=${HADOOP_DOWNLOAD_URL}\
    .
