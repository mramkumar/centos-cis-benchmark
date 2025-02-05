#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.3 Ensure SELinux policy is configured (Automated)

grep SELINUXTYPE=targeted /etc/selinux/config || exit $1

sestatus | grep -E "Loaded policy name:\s*targeted" || exit $1
