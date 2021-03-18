#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.3 Ensure journald is configured to write logfiles to persistent disk (Automated)

if [ -f /etc/systemd/journald.conf ] ; then
	grep -E ^\s*Storage /etc/systemd/journald.conf |grep '^Storage'|awk -F '=' '{print $2}'|grep 'persistent' || exit $?
else
        exit 1
fi
