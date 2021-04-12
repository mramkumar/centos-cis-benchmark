#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.1 Ensure journald is configured to send logs to rsyslog

cat /etc/systemd/journald.conf |grep -v ForwardToSyslog > /etc/systemd/journald.conf.bkp
echo "ForwardToSyslog=yes" >> /etc/systemd/journald.conf.bkp
rm -f /etc/systemd/journald.conf
mv /etc/systemd/journald.conf.bkp /etc/systemd/journald.conf


