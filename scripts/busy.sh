#!/bin/zsh
while true; do head -c200 /dev/urandom | od -An -w50 -x | grep -E --color "([[:alpha:]][[:digit:]]){2}"; sleep 0.3; done
