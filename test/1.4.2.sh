#!/bin/sh
# ** AUTO GENERATED **

# 1.4.2 Ensure filesystem integrity is regularly checked (Automated)

if [[ $(ls -A /etc/cron.*) ]] ; then
 grep -r aide /etc/cron.* /etc/crontab || exit $?
else
 crontab -u root -l | grep aide || exit $?
fi
