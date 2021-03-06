from alpine:3.13

ARG OVERLAY_VERSION="v2.2.0.1"
ARG OVERLAY_ARCH="amd64"

run apk add --no-cache curl tzdata shadow bash && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtimea && \
    curl -o /tmp/s6-overlay.tar.gz -L \
    "https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}.tar.gz" && \
     tar xfz /tmp/s6-overlay.tar.gz -C / && \
     rm /tmp/s6-overlay.tar.gz

ENV USERNAME=nobody
ENV GROUPNAME=nobody
ENV USERID=1000
ENV GROUPID=1000
ENV HOMEDIR=/home/nobody

COPY root/ /

ENTRYPOINT ["/init"]
