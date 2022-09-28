from alpine:3.16

ARG OVERLAY_VERSION="v2.2.0.1"
ARG OVERLAY_ARCH="amd64"

run apk add --no-cache tzdata shadow bash && \
    apk add --no-cache --virtual .curl curl && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && \
    curl -o /tmp/s6-overlay.tar.gz -L \
    "https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}.tar.gz" && \
     tar xfz /tmp/s6-overlay.tar.gz -C / && \
     rm /tmp/s6-overlay.tar.gz && \
     apk del --purge .curl

ENV USERNAME=nobody
ENV GROUPNAME=nobody
ENV USERID=1000
ENV GROUPID=1000
ENV HOMEDIR=/home/nobody

COPY root/ /

ENTRYPOINT ["/init"]
