#!/bin/sh
# ** AUTO GENERATED **

# 2.2.5 Ensure DHCP Server is not installed (Automated)

rpm -q dhcp | grep -E "package dhcp is not installed" || exit $1
