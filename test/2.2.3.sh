#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 Ensure Avahi Server is not installed (Automated)

rpm -q avahi-autoipd | grep -E "package avahi-autoipd is not installed" || exit $1

rpm -q  vahi| grep -E "package avahi is not installed" || exit $1
