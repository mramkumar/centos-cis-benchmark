#!/bin/sh
# ** AUTO GENERATED **

# 3.5.1.4 Ensure firewalld service is enabled and running (Automated)

systemctl is-enabled firewalld | grep enabled || exit $?

systemctl status firewalld | grep 'Active: active (running) ' || exit $?
