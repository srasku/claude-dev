FROM ubuntu:24.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        build-essential \
        curl \
        gh \
        git \
        gdb \
        mercurial \
        shellcheck

RUN curl -fSsL https://claude.ai/install.sh | bash

ENV PATH $PATH:/root/.local/bin
