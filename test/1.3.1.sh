#!/bin/sh
# ** AUTO GENERATED **

# 1.3.1 Ensure sudo is installed (Automated)

rpm -q sudo|grep -E '^sudo-' || exit $1
