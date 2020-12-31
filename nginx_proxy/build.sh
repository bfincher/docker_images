#!/bin/bash

docker build -t nginx_proxy .

#docker network create --gateway 192.168.10.1 --subnet 192.168.10.0/24 nginx_proxy_net
