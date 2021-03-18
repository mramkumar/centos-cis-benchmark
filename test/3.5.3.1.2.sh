#!/bin/sh
# ** AUTO GENERATED **

# 3.5.3.1.2 Ensure nftables is not installed (Automated)

rpm -q nftables | grep -E "package nftables is not installed" || exit $1
