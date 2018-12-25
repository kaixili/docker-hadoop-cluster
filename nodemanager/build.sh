#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.1}

docker build -t ${REPO}/hadoop-nodemanager:${TAG} --build-arg REPO=${REPO} --build-arg TAG=${TAG} .
