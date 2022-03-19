FROM alpine as alpine-go-build
RUN apk add --no-cache go
RUN go install github.com/shadowsocks/go-shadowsocks2@latest

FROM alpine

WORKDIR /root
COPY --from=alpine-go-build /root/go/bin/ .

ENV AEAD="AEAD_CHACHA20_POLY1305"
ENV PASSWORD="123456789"

EXPOSE 8080/tcp
EXPOSE 8080/udp

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
