#!/bin/sh -e
# We want each file to be a separate argument below so we allow unquoted
# variables.
# shellcheck disable=SC2086

SCM_DIR=$(dirname "$0")/scm/hg
SH_FILES=$("${SCM_DIR}/ls-files.sh" | grep '\.sh$' | tr '\n' ' ')

shellcheck ${SH_FILES}
