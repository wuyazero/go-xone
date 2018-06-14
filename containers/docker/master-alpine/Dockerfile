FROM alpine:3.7

RUN \
  apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
  git clone --depth 1 --branch release/1.8 https://github.com/wuyazero/go-xone && \
  (cd go-xone && make gox1) && \
  cp go-xone/build/bin/gox1 /gox1 && \
  apk del go git make gcc musl-dev linux-headers && \
  rm -rf /go-xone && rm -rf /var/cache/apk/*

EXPOSE 8545
EXPOSE 30303

ENTRYPOINT ["/gox1"]
