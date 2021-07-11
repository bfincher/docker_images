from ubuntu:focal

ARG OVERLAY_VERSION="v1.22.1.0"
ARG OVERLAY_ARCH="amd64"

run apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y bash vim curl && \
    apt-get clean && \
    curl -o /tmp/s6-overlay.tar.gz -L "https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}.tar.gz" && \
    tar xfz /tmp/s6-overlay.tar.gz -C / --exclude './bin' && \
    tar xfz /tmp/s6-overlay.tar.gz -C /usr ./bin && \
    rm /tmp/s6-overlay.tar.gz 

ENV USERNAME=nobody
ENV GROUPNAME=nobody
ENV USERID=1000
ENV GROUPID=1000
ENV HOMEDIR=/home/nobody

copy root/ /

ENTRYPOINT ["/init"]
