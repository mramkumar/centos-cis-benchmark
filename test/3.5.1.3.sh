#!/bin/sh
# ** AUTO GENERATED **

# 3.5.1.3 Ensure nftables is not installed or stopped and masked (Automated)

systemctl is-enabled nftables | grep masked || exit $?

systemctl status nftables | grep 'Active: active (running) ' || exit $?
