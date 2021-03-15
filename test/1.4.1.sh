#!/bin/sh
# ** AUTO GENERATED **

# 1.4.1 Ensure AIDE is installed (Automated)

rpm -q aide |grep -E "aide-" || exit $?
