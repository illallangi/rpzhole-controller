# main image
FROM docker.io/library/debian:buster-20220509

# install prerequisites
RUN \
  apt-get update \
  && \
  apt-get install -y --no-install-recommends\
    curl \
    gosu \
  && \
  rm -rf /var/lib/apt/lists/*

# add local files
COPY root/ /
ENTRYPOINT ["custom-entrypoint"]
CMD ["cat", "/etc/coredns/zones/rpzholes.rpz"]
