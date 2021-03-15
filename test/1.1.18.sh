#!/bin/sh
# ** AUTO GENERATED **

# 1.1.18 Ensure nodev option set on /home partition (Automated)

mount | grep /home | grep nodev || exit $?
