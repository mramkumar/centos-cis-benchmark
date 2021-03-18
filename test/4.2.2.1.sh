#!/bin/sh
# ** AUTO GENERATED **

# 4.2.2.1 Ensure journald is configured to send logs to rsyslog (Automated)

if [ -f /etc/systemd/journald.conf ] ; then
	grep -E ^\s*ForwardToSyslog /etc/systemd/journald.conf|grep '^ForwardToSyslog'|awk -F '=' '{print $2}'|grep 'yes' || exit $?
else
        exit 1
fi
