#!/bin/sh
# ** AUTO GENERATED **

# 1.6.4 Ensure prelink is disabled (Automated)

rpm -q prelink | grep -E "package prelink is not installed" || exit $1
