#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 Ensure mounting of udf filesystems is disabled (Automated)

modprobe -n -v udf 2>&1 | grep -E '(udf|install)' | exit $?
[[ -z "$(lsmod | grep udf)" ]] || exit 1
