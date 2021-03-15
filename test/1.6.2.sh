#!/bin/sh
# ** AUTO GENERATED **

# 1.6.2 Ensure XD/NX support is enabled (Automated)

dmesg | grep NX | grep "NX (Execute Disable) protection: active" || exit $1
