#!/bin/sh
# ** AUTO GENERATED **

# 5.1.7 Ensure permissions on /etc/cron.d are configured (Automated)

stat -L -c "%a %u %g" /etc/cron.d | grep -q "700 0 0$" || exit $?
