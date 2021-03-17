#!/bin/sh
# ** AUTO GENERATED **

# 5.2.21 Ensure SSH MaxStartups is configured (Automated)

sshd -T|grep -i MaxStartups | grep "maxstartups\s*10:30:60" || exit $?
