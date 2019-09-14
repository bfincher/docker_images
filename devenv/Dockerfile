from bfincher/ubuntu-python3:bionic

run apt-get update && \
    apt-get install -y --no-install-recommends make git gcc docker.io sudo python3-virtualenv && \
    pip3 install virtualenvwrapper
    #echo "Installing stuff to build git"
    #export DEBIAN_FRONTEND=noninteractive 
    #ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
    #apt-get install -y --no-install-recommends autoconf zlib1g-dev tcl-dev gettext asciidoc

VOLUME /code 

copy root/ /
