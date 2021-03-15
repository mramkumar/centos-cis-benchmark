#!/bin/sh
# ** AUTO GENERATED **

# 1.1.13 Ensure nodev option set on /var/tmp partition (Automated)

mount | grep /var/tmp | grep nodev || exit $?
