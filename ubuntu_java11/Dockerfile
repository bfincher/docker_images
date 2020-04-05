from bfincher/ubuntu-base:bionic

env PYTHONBUFFERED 1

run apt-get install -y default-jdk-headless openjdk-11-source && \
    apt-get clean
    
ENTRYPOINT ["/init"]
