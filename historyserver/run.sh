#!/bin/bash

$HADOOP_PREFIX/sbin/mr-jobhistory-server.sh start historyserver --config $HADOOP_CONF_DIR
$HADOOP_PREFIX/bin/yarn --config $HADOOP_CONF_DIR historyserver
