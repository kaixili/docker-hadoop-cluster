#!/bin/sh
REPO=${1-uhopper}
TAG=${2-2.8.1}

for i in hadoop namenode datanode resourcemanager nodemanager historyserver spark; do
    echo Building $i
    ( cd $i && ./build.sh ${REPO} ${TAG})
done
