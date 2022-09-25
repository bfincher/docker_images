from  ghcr.io/linuxserver/rdesktop:ubuntu-kde

run apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        sudo \
        python3-virtualenv \
        virtualenv \
        openjdk-17-jdk \
        openjdk-17-source \
        libswt-gtk-4-jni \
        python3 \
        python3-setuptools \
        python3-distutils \
        curl \
        unzip \
        net-tools \
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
#    ln -s /usr/bin/pip3 /usr/bin/pip && \
    pip3 install virtualenvwrapper && \
    mkdir /code && \
    mkdir /other && \
    mkdir -p /home/bfincher 

#ARG S6_OVERLAY_VERSION="3.1.2.1"

#run  curl -o /tmp/s6-overlay-noarch.tar.gz -L \
#     "https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz" && \
#     tar -Jxpf /tmp/s6-overlay-noarch.tar.gz -C / && \
#     rm /tmp/s6-overlay-noarch.tar.gz && \
#     curl -o /tmp/s6-overlay-x86-64.tar.gz -L \
#     "https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-x86_64.tar.xz" && \
#     tar -Jxpf /tmp/s6-overlay-x86-64.tar.gz -C / && \
#     rm /tmp/s6-overlay-x86-64.tar.gz && \
#     mkdir /etc/cont-init.d
     
#run groupadd -g 1000 bfincher && \
#    useradd bfincher -u 1000 -g 1000 -m -d /home/bfincher -s /bin/bash && \
#    echo 'bfincher:abc' | chpasswd

#ADD 11-modifyuser /etc/cont-init.d
ADD root /
VOLUME /code 

VOLUME /home/bfincher
