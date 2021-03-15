#!/bin/sh
# ** AUTO GENERATED **

# 2.2.9 Ensure DNS Server is not installed (Automated)

rpm -q bind | grep -E "package bind is not installed" || exit $1
