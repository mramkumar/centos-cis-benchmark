#!/bin/sh
# ** AUTO GENERATED **

# 1.8.1.6 Ensure permissions on /etc/issue.net are configured (Automated)

stat -L -c "%a %u %g" /etc/issue.net | grep -q "644 0 0$" || exit $?
