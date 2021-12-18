from  ghcr.io/linuxserver/rdesktop

run apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        sudo \
        python3-virtualenv \
        virtualenv \
        openjdk-11-jdk \
        openjdk-11-source \
        libswt-gtk-4-jni \
        python3 \
        python3-setuptools \
        python3-distutils \
        curl \
        unzip \
        net-tools \
        ctags \
        gcc \
        libheif-examples \
        ipython3 \
        net-tools  \
        make autoconf gcc zlib1g-dev gettext \
        iputils-ping \
        vim && \
    #apt-get install kmod msr-tools && \
    apt-get clean && \
    ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime && \
    apt-get install -y --no-install-recommends tzdata && \
    curl -sS https://bootstrap.pypa.io/get-pip.py > setup.py && \
    python3 setup.py && \
    rm setup.py && \
    ln -s /usr/bin/python3.6 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip && \
    pip3 install virtualenvwrapper && \
    mkdir /code && \
    mkdir /other && \
    mkdir -p /home/bfincher

ADD 11-modifyuser /etc/cont-init.d

VOLUME /code 

VOLUME /other

VOLUME /home/bfincher
