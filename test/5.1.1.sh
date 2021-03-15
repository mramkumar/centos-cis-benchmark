#!/bin/sh
# ** AUTO GENERATED **

# 5.1.1 Ensure cron daemon is enabled and running (Automated)

systemctl is-enabled crond | grep enabled || exit $?

systemctl status crond | grep 'Active: active (running) ' || exit $?
