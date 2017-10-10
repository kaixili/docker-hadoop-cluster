ARG REPO=uhopper
ARG TAG=2.7.2
FROM ${REPO}/hadoop:${TAG}

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name/checkpoint

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
