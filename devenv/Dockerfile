from bfincher/ubuntu-python3:bionic

run apt-get update && \
    apt-get install -y --no-install-recommends ssh git docker.io sudo python3-virtualenv openjdk-11-jdk-headless && \
    pip3 install virtualenvwrapper
    apt-get install -y --no-install-recommends unzip && \
    curl -o gradle.zip -L "https://services.gradle.org/distributions/gradle-5.6.2-bin.zip" && \
    unzip -d /opt gradle.zip && \
    ln -s /opt/gradle-5.6.2/bin/gradle /usr/bin/gradle && \
    rm gradle.zip
    #echo "Installing stuff to build git"
    #export DEBIAN_FRONTEND=noninteractive 
    #ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime
    #apt-get install -y --no-install-recommends make gcc autoconf zlib1g-dev tcl-dev gettext asciidoc


VOLUME /code 

copy root/ /
