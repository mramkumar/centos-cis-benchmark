#!/bin/sh
# ** AUTO GENERATED **

# 2.2.11 Ensure HTTP server is not installed (Automated)

rpm -q httpd | grep -E "package httpd is not installed" || exit $1
