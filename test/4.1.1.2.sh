#!/bin/sh
# ** AUTO GENERATED **

# 4.1.1.2 Ensure auditd service is enabled and running (Automated)

systemctl is-enabled auditd | grep enabled || exit $?

systemctl status auditd | grep 'Active: active (running) ' || exit $?
