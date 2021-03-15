#!/bin/sh
# ** AUTO GENERATED **

# 2.2.17 Ensure rsync is not installed or the rsyncd service is masked (Automated)

rpm -q rsync | grep -E "package rsync is not installed" || exit $1
