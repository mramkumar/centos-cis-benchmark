#!/bin/sh
# ** AUTO GENERATED **

# 5.2.22 Ensure SSH MaxSessions is limited (Automated)

sshd -T|grep -i maxsessions| grep "maxsessions\s*10" || exit $?
