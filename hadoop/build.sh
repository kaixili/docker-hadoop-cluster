#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.7.2}

docker build -t ${REPO}/hadoop:${TAG} --build-arg HADOOP_VERSION=${TAG} .
