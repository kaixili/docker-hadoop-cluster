ARG REPO=uhopper
ARG TAG=2.7.2
FROM ${REPO}/hadoop:${TAG}

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
