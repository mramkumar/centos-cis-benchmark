#!/bin/sh
# ** AUTO GENERATED **

# 3.3.4 - Ensure suspicious packets are logged (Automated)

echo net.ipv4.conf.all.log_martians = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.log_martians=1
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.log_martians = 1>/etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.log_martians=1
sysctl -w net.ipv4.route.flush=1


