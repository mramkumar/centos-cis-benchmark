#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.3 - Ensure journald is configured to write logfiles to persistent disk (Automated)

cat /etc/systemd/journald.conf |grep -v Storage > /etc/systemd/journald.conf.bkp
echo "Storage=persistent" >> /etc/systemd/journald.conf.bkp
rm -f /etc/systemd/journald.conf
mv /etc/systemd/journald.conf.bkp /etc/systemd/journald.conf


