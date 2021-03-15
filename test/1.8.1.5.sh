#!/bin/sh
# ** AUTO GENERATED **

# 1.8.1.5 Ensure permissions on /etc/issue are configured (Automated)

stat -L -c "%a %u %g" /etc/issue | grep -q "644 0 0$" || exit $?
