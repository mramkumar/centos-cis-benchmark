#!/bin/sh
# ** AUTO GENERATED **

# 1.1.11 Ensure separate partition exists for /var/tmp (Automated)

mount | grep /var/tmp || exit $?
