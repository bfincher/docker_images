docker run -d \
    -p 80:80 \
    --name=nginx_proxy \
    --restart unless-stopped \
    --network hb_net \
    nginx_proxy
