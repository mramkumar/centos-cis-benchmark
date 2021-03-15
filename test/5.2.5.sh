#!/bin/sh
# ** AUTO GENERATED **

# 5.2.5 Ensure SSH LogLevel is appropriate (Automated)

grep "^\s*LogLevel" /etc/ssh/sshd_config | grep -q "LogLevel\s*INFO" || exit $?
