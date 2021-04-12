#!/bin/sh
# ** AUTO GENERATED **

# 1.1.24 - Disable USB Storage (Automated)

echo "install usb-storage /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod usb-storage
