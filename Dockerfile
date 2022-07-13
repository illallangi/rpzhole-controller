# main image
FROM docker.io/library/debian:buster-20220711

# install prerequisites
RUN apt-get update \
    && \
    apt-get install -y --no-install-recommends\
      curl=7.64.0-4+deb10u2 \
      gosu=1.10-1+b23 \
    && \
    rm -rf /var/lib/apt/lists/*

# add local files
COPY root/ /
ENTRYPOINT ["custom-entrypoint"]
CMD ["cat", "/etc/coredns/zones/rpzholes.rpz"]
