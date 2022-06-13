#!/bin/sh

sudo podman build --build-arg HTTPS_PROXY=http://10.94.1.1:1081 -v "$(pwd):/go/src/github.com/88250/pipe/" -t pipe-front-dev -f Dockerfile-front-dev
sudo podman build --build-arg HTTPS_PROXY=http://10.94.1.1:1081 -v "$(pwd):/go/src/github.com/88250/pipe/" -t pipe-go-dev -f Dockerfile-go-dev
