#!/bin/sh
# ** AUTO GENERATED **

# 2.2.13 Ensure Samba is not installed (Automated)

rpm -q samba | grep -E "package samba is not installed" || exit $1
