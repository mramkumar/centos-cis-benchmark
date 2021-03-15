#!/bin/sh
# ** AUTO GENERATED **

# 1.1.14 Ensure nosuid option set on /var/tmp partition (Automated)

mount | grep /var/tmp | grep nosuid || exit $?
