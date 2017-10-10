#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.7.2}

docker build -t ${REPO}/hadoop-namenode:${TAG} --build-arg REPO=${REPO} --build-arg TAG=${TAG} .
