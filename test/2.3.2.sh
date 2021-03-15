#!/bin/sh
# ** AUTO GENERATED **

# 2.3.2 Ensure rsh client is not installed (Automated)

rpm -q rsh | grep -E "package rsh is not installed" || exit $1
