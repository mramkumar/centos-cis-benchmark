#!/bin/sh
# ** AUTO GENERATED **

# 1.1.24 Disable USB Storage (Automated)

modprobe -n -v usb-storage 2>&1 | grep -E '(install|/bin/true)' || exit 1
[[ -z "$(lsmod | grep usb-storage)" ]] || exit 1
