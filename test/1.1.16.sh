#!/bin/sh
# ** AUTO GENERATED **

# 1.1.16 Ensure separate partition exists for /var/log/audit (Automated)

mount | grep /var/log/audit || exit $?
