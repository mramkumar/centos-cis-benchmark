#!/bin/sh
# ** AUTO GENERATED **

# 5.2.8 Ensure SSH IgnoreRhosts is enabled (Automated)

grep "^\s*IgnoreRhosts" /etc/ssh/sshd_config | grep -q "IgnoreRhosts\s*yes" || exit $?
