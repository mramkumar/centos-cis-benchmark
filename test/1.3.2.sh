#!/bin/sh
# ** AUTO GENERATED **

# 1.3.2 Ensure sudo commands use pty (Automated)

if [[ $(ls -A /etc/sudoers.d/ ) ]] ; then
        grep -Ei '^\s*Defaults\s+([^#]\S+,\s*)?use_pty\b' /etc/sudoers /etc/sudoers.d/* | awk -F: '{print $2}'|grep '^Defaults\s*use_pty' || exit $?
else
        grep -Ei '^\s*Defaults\s+([^#]\S+,\s*)?use_pty\b' /etc/sudoers | awk -F: '{print $2}'|grep '^Defaults\s*use_pty' || exit $?
fi
