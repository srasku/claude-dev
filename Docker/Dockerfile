FROM ubuntu:24.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        curl \
        git \
        mercurial \
        shellcheck

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}

RUN curl -fSsL https://claude.ai/install.sh | bash

ENV PATH $PATH:/root/.local/bin
