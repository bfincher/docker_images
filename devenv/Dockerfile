from bfincher/ubuntu-python3:bionic

run apt-get update && \
    apt-get install -y --no-install-recommends ssh \
        git \
        docker.io \
        sudo \
        python3-virtualenv \
        virtualenv \
        openjdk-11-jdk-headless \
        unzip \
        net-tools \
        ctags \
        net-tools && \
    pip3 install virtualenvwrapper && \
    export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && \
    apt-get install -y --no-install-recommends tzdata

    #echo "Installing stuff to build git"
    #apt-get install -y --no-install-recommends make gcc autoconf zlib1g-dev tcl-dev gettext asciidoc

VOLUME /code 

copy root/ /
