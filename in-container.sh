#!/bin/sh

IMAGE=srasku-dev:ubuntu-latest
docker build -f Docker/Dockerfile -t ${IMAGE} .
docker run -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"
