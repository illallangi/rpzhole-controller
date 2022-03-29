# main image
FROM docker.io/library/debian:buster-20220328

# install prerequisites
RUN \
  apt-get update \
  && \
  apt-get install -y \
    curl \
    gosu \
  && \
  apt-get clean

# add local files
COPY root/ /
ENTRYPOINT ["custom-entrypoint"]
CMD ["cat", "/etc/coredns/zones/rpzholes.rpz"]
