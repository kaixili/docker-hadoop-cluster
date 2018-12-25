#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.5}

docker build -t ${REPO}/hadoop-namenode:${TAG} --build-arg REPO=${REPO} --build-arg TAG=${TAG} .
