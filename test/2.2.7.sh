#!/bin/sh
# ** AUTO GENERATED **

# 2.2.7 Ensure nfs-utils is not installed or the nfs-server service is masked (Automated)

rpm -q nfs-utils | grep -E "package nfs-utils is not installed" || exit $1
