#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.3 Ensure mounting of udf filesystems is disabled (Automated)

echo "install udf /bin/true" >> /etc/modprobe.d/CIS.conf
rmmod udf
