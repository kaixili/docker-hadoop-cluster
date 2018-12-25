#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.5}
SPARK_DOWNLOAD_URL=${5-https://mirrors.tuna.tsinghua.edu.cn/apache/spark}

docker build -t ${REPO}/hadoop-spark:${TAG} \
    --build-arg REPO=${REPO} \
    --build-arg TAG=${TAG} \
    --build-arg SPARK_DOWNLOAD_URL=${SPARK_DOWNLOAD_URL} \
    .
