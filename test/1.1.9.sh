#!/bin/sh
# ** AUTO GENERATED **

# 1.1.9 Ensure nosuid option set on /dev/shm partition (Automated)

mount | grep /dev/shm | grep nosuid || exit $?
