.PHONY: build cluster test

default: build

build:
	go build -o bin/swarm    github.com/wuyazero/go-xone/cmd/swarm
	go build -o bin/geth     github.com/wuyazero/go-xone/cmd/geth
	go build -o bin/bootnode github.com/wuyazero/go-xone/cmd/bootnode

cluster: build
	scripts/boot-cluster.sh

test:
	go test -v github.com/wuyazero/go-xone/swarm/...
