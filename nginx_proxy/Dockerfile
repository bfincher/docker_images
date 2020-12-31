from bfincher/alpine-base:3.12

run apk add --no-cache nginx && \
    rm /etc/nginx/conf.d/default.conf && \
    mkdir -p /run/nginx && \
    rm -rf /var/cache/apk/*

copy root/ /

EXPOSE 80
