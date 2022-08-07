from ubuntu:focal

run apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        openjdk-17-jdk-headless && \
    apt-get clean && \
    export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && \
    apt-get install -y --no-install-recommends tzdata

volume /cache
