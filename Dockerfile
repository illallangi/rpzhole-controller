# main image
FROM docker.io/library/debian:buster-20220125

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
CMD ["cat", "/zones/db.hole.rpz"]
