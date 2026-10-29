FROM ubuntu:24.04

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        ack-grep \
        build-essential \
        curl \
        gh \
        git \
        gdb \
        mercurial \
        shellcheck

ARG CLAUDE_VERSION=latest
RUN curl -fSsL https://claude.ai/install.sh | bash -s ${CLAUDE_VERSION}

ENV PATH $PATH:/root/.local/bin

# Disable Claude auto-updates.  The update only applies to the current
# container.  It doesn't update the image so it's always a wasted download for
# this environment.
ENV DISABLE_AUTOUPDATER=1
