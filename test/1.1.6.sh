#!/bin/sh
# ** AUTO GENERATED **

# 1.1.6 Ensure /dev/shm is configured (Automated)

mount | grep /dev/shm || exit $?
