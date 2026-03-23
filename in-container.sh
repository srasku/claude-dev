#!/bin/sh -e

IMAGE=claude-dev:latest
DOCKER_BUILDKIT=0 docker build -f Docker/Dockerfile -t ${IMAGE} .

CLAUDE_SETTINGS=Docker/.claude.json
test -s ${CLAUDE_SETTINGS} || echo "{}" > ${CLAUDE_SETTINGS}
docker run \
    -it \
    -v "$(pwd):/home/develop" \
    -v "$(pwd)/Docker/.claude.json:/root/.claude.json" \
    --rm ${IMAGE} "$@"
