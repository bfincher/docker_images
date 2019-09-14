from alpine:3.10

ARG OVERLAY_VERSION="v1.22.1.0"
ARG OVERLAY_ARCH="amd64"

run apk add --no-cache --virtual .builddeps curl && \
    curl -o /tmp/s6-overlay.tar.gz -L \
    "https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}.tar.gz" && \
     tar xfz /tmp/s6-overlay.tar.gz -C / && \
     rm /tmp/s6-overlay.tar.gz && \
     apk del .builddeps && \
     apk add --no-cache shadow bash

ENV USERNAME=nobody
ENV GROUPNAME=nobody
ENV USERID=1000
ENV GROUPID=1000
ENV HOMEDIR=/home/nobody

COPY root/ /

ENTRYPOINT ["/init"]
