#!/bin/sh

IMAGE=srasku-dev:latest
docker build -f Docker/Dockerfile -t ${IMAGE} .
docker run -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"
