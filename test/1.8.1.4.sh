#!/bin/sh
# ** AUTO GENERATED **

# 1.8.1.4 Ensure permissions on /etc/motd are configured (Automated)

stat -L -c "%a %u %g" /etc/motd | grep -q "644 0 0$" || exit $?
