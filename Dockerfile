# main image
FROM alpine:edge

# install gosu from testing repo
RUN \
  echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk update && \
  apk add --upgrade apk-tools && \
  apk add --upgrade bash curl gosu@testing kubectl@testing && \
  rm -rf /var/cache/apk/*

# add local files
COPY custom-entrypoint generate-zonefile /usr/local/bin/
ENTRYPOINT ["custom-entrypoint"]
CMD ["cat", "/zones/db.hole.rpz"]
