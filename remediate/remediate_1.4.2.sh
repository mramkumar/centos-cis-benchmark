#!/bin/sh

#1.4.2 - Ensure filesystem integrity is regularly checked (Automated)

file="/etc/cron.d/aide-cis"

echo "#Ensure filesystem integrity is regularly checked" > $file
echo "0 5 * * * /usr/sbin/aide --check" >> $file
