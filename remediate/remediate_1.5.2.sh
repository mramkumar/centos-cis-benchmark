#!/bin/sh
# ** AUTO GENERATED **

# 1.5.2 - Ensure permissions on bootloader config are configured (Automated)


file=/boot/grub2/grub.cfg

chown root:root $file
chmod og-rwx $file

test -f /boot/grub2/user.cfg && chown root:root /boot/grub2/user.cfg
test -f /boot/grub2/user.cfg && chmod og-rwx /boot/grub2/user.cfg

