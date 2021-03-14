#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.4 - Ensure mounting of hfs filesystems is disabled (Scored)

echo "install fat /bin/true" >> /etc/modprobe.d/CIS.conf
echo "install vfat /bin/true" >> /etc/modprobe.d/CIS.conf
echo "install msdos /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod msdos
rmmod vfat
rmmod fat
