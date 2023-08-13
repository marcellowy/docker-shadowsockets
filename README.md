# Deprecated: use https://github.com/shadowsocks/shadowsocks-rust replace
# shadownsockets
#### 

shadownsockets

#### Docker Build
```
git clone https://github.com/marcellowy/docker-shadowsockets.git
cd docker-shadowsockets
docker build --rm -t shadowsockets:latest .
```

#### Docker Run
```
docker run --env AEAD=AEAD_CHACHA20_POLY1305 \
--env PASSWORD=123456789 -p 30124:8080 -itd shadowsockets:latest
```

#### License
MIT
