#!/bin/sh
# ** AUTO GENERATED **

# 1.1.7 Ensure noexec option set on /dev/shm partition (Automated)

mount | grep /dev/shm | grep noexec || exit $?
