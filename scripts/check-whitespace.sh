#!/bin/sh

for f in "$@"; do
    if grep '[[:blank:]]$' "$f"; then
        echo "Trailing whitespace found in $f"
        exit 1
    fi
done
