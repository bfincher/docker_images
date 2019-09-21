from bfincher/ubuntu-base:bionic

env PYTHONBUFFERED 1

run apt-get install -y python3 python3-setuptools curl && \
    curl -sS https://bootstrap.pypa.io/get-pip.py > setup.py && \
    python3 setup.py && \
    rm setup.py && \
    ln -s /usr/bin/python3.6 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip

ENTRYPOINT ["/init"]
