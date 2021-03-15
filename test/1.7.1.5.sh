#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.5 Ensure the SELinux mode is enforcing (Automated)

grep SELINUX=enforcing /etc/selinux/config || exit $1

sestatus | grep -E "SELinux status:\s*enabled" || exit $1
sestatus | grep -E "Current mode:\s*enforcing" || exit $1
sestatus | grep -E "Mode from config file:\s*enforcing" || exit $1
