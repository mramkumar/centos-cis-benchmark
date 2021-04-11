#!/bin/sh
# ** AUTO GENERATED **

# 3.2.2 - Ensure packet redirect sending is disabled (Automated)

echo net.ipv4.conf.all.send_redirects = 0 > /etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.all.send_redirects=0
sysctl -w net.ipv4.route.flush=1

echo net.ipv4.conf.default.send_redirects = 0 > /etc/sysctl.d/CIS.conf
sysctl -w net.ipv4.conf.default.send_redirects=0
sysctl -w net.ipv4.route.flush=1


