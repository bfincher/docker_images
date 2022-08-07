from bfincher/ubuntu-base:focal

env PYTHONBUFFERED 1

run apt-get install -y default-jdk-headless openjdk-11-source && \
    wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz && \
    tar xvf openjdk-17.0.2_linux-x64_bin.tar.gz && \
    mv jdk-17.0.2/ /opt/jdk-17/ && \
    tar xvf openjdk-17.0.2_linux-x64_bin.tar.gz && \
    rm jdk-17.0.2/ /opt/jdk-17/ && \
    apt-get clean
    
ENTRYPOINT ["/init"]
