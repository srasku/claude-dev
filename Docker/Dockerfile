FROM ubuntu:20.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        mercurial

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}
