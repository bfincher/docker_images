from bfincher/ubuntu-python3:bionic

run apt-get update && \
    apt-get install -y make git gcc \
    echo "Installing stuff to build git"
    export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && \
    apt-get install -y autoconf zlib1g-dev tcl-dev gettext asciidoc

VOLUME /code 
