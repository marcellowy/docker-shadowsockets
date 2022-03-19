# shadownsockets

#### 介绍
shadownsockets

#### Docker Build
```
docker build --rm -t shadowsockets:latest .
```

#### Docker Run
```
docker run --env AEAD=AEAD_CHACHA20_POLY1305 \
--env PASSWORD=123456789 \
--env PORT=10111 \
-itd shadowsockets:latest
```

#### License
MIT