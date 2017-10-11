#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.1}
SPARK_HADOOP_PROFILE=$(echo ${TAG} | awk -F . '{printf("%x.%x",$1,2)}')

docker build -t ${REPO}/hadoop-spark:${TAG} \
    --build-arg REPO=${REPO} \
    --build-arg TAG=${TAG} \
    --build-arg SPARK_HADOOP_PROFILE=${SPARK_HADOOP_PROFILE} .
