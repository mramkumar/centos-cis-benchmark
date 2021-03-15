#!/bin/sh
# ** AUTO GENERATED **

# 2.2.14 Ensure HTTP Proxy Server is not installed (Automated)

rpm -q squid | grep -E "package squid is not installed" || exit $1
