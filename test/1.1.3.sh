#!/bin/sh
# ** AUTO GENERATED **

# 1.1.3 Ensure noexec option set on /tmp partition (Automated)

mount | grep /tmp | grep noexec || exit $?
