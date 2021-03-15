#!/bin/sh
# ** AUTO GENERATED **

# 2.2.18 Ensure NIS server is not installed (Automated)

rpm -q ypserv | grep -E "package ypserv is not installed" || exit $1
