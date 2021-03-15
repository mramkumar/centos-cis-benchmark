#!/bin/sh
# ** AUTO GENERATED **

# 1.5.1 Ensure bootloader password is set (Automated)

grep "^GRUB2_PASSWORD" /boot/grub2/grub.cfg || exit $?
