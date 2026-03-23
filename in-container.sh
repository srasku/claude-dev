#!/bin/sh -e

IMAGE=claude-dev:latest
DOCKER_BUILDKIT=0 docker build -f Docker/Dockerfile -t ${IMAGE} .
docker run -it -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"
