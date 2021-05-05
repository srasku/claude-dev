#!/bin/sh -e

SCM_DIR=$(dirname "$0")/scm/hg
SH_FILES=$("${SCM_DIR}/ls-files.sh" | grep -v '^?' | grep '\.sh$' | cut -d' ' -f2- | tr '\n' ' ')

# We want each file to be a separate argument so we don't quote SH_FILES
# shellcheck disable=SC2086
shellcheck ${SH_FILES}
