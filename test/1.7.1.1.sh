#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.1 Ensure SELinux is installed (Automated)

rpm -q libselinux |grep -E "libselinux-" || exit $?
