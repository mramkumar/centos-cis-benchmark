#!/bin/sh
# ** AUTO GENERATED **

# 5.2.12 Ensure SSH PermitUserEnvironment is disabled (Automated)

grep "^\s*PermitUserEnvironment" /etc/ssh/sshd_config | grep -q "PermitUserEnvironment\s*no" || exit $?
