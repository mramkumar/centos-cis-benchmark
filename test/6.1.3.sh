#!/bin/sh
# ** AUTO GENERATED **

# 6.1.3 Ensure permissions on /etc/shadow are configured (Automated)

stat -L -c "%a %u %g" /etc/shadow | grep -q "^0 0 0$" || exit $?
