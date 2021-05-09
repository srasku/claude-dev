#!/bin/sh

hg status -A | grep -v '^[?I]' | cut -d' ' -f2-
