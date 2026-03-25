FROM ubuntu:24.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        git \
        gdb \
        mercurial \
        shellcheck

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}

RUN curl -fSsL https://claude.ai/install.sh | bash

ENV PATH $PATH:/root/.local/bin
