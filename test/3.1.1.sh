#!/bin/sh
# ** AUTO GENERATED **

# 3.1.1 Disable IPv6 (Manual)

grep "^\s*linux" /boot/grub2/grub.cfg | grep -E "ipv6.disable\s*=\s*1" || exit $?
