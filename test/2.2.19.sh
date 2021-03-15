#!/bin/sh
# ** AUTO GENERATED **

# 2.2.19 Ensure telnet-server is not installed (Automated)

rpm -q telnet-server | grep -E "package telnet-server is not installed" || exit $1
