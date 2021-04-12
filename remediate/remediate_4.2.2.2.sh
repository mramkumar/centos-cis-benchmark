#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.2 - Ensure journald is configured to compress large log files (Automated)

cat /etc/systemd/journald.conf |grep -v Compress > /etc/systemd/journald.conf.bkp
echo "Compress=yes" >> /etc/systemd/journald.conf.bkp
rm -f /etc/systemd/journald.conf
mv /etc/systemd/journald.conf.bkp /etc/systemd/journald.conf


