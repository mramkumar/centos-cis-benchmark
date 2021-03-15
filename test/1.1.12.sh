#!/bin/sh
# ** AUTO GENERATED **

# 1.1.12 Ensure noexec option set on /var/tmp partition (Automated)

mount | grep /var/tmp | grep noexec || exit $?
