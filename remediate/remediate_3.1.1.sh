#!/bin/sh
# ** AUTO GENERATED **

# 3.1.1 - Disable IPv6 (Manual)

echo 'GRUB_CMDLINE_LINUX="ipv6.disable=1"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
