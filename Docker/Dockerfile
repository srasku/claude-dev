FROM ubuntu:20.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        mercurial \
        shellcheck

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}
