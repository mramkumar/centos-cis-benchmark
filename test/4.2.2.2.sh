#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.2 Ensure journald is configured to compress large log files (Automated)

if [ -f /etc/systemd/journald.conf ] ; then
	grep -E ^\s*Compress /etc/systemd/journald.conf|grep '^Compress'|awk -F '=' '{print $2}'|grep 'yes' || exit $?
else
        exit 1
fi
