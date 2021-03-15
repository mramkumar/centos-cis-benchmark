#!/bin/sh
# ** AUTO GENERATED **

# 4.2.1.2 Ensure rsyslog Service is enabled and running (Automated)

systemctl is-enabled rsyslog | grep enabled || exit $?

systemctl status rsyslog | grep 'active (running) ' || exit $?
