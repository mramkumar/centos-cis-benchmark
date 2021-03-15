#!/bin/sh
# ** AUTO GENERATED **

# 1.1.4 Ensure nodev option set on /tmp partition (Automated)

mount | grep /tmp | grep nodev || exit $?
