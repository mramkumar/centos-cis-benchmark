#!/bin/sh
# ** AUTO GENERATED **

# 2.2.8 Ensure rpcbind is not installed or the rpcbind services are masked (Automated)

rpm -q rpcbind | grep -E "package rpcbind is not installed" || exit $1
