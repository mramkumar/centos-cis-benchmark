#!/bin/sh
# ** AUTO GENERATED **

# 1.1.8 Ensure nodev option set on /dev/shm partition (Automated)

mount | grep /dev/shm | grep nodev || exit $?
