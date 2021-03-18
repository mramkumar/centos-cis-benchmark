#!/bin/sh
# ** AUTO GENERATED **

# 1.3.3 Ensure sudo log file exists (Automated)

if [[ $(ls -A /etc/sudoers.d/ ) ]] ; then
        grep -Ei '^\s*Defaults\s+([^#;]+,\s*)?logfile\s*=\s*(")?[^#;]+(")?' /etc/sudoers /etc/sudoers.d/*|awk -F: '{print $2}'|grep '^Defaults\s*logfile=' || exit $?
else
        grep -Ei '^\s*Defaults\s+([^#;]+,\s*)?logfile\s*=\s*(")?[^#;]+(")?' /etc/sudoers | awk -F: '{print $2}'|grep '^Defaults\s*logfile=' || exit $?
fi
