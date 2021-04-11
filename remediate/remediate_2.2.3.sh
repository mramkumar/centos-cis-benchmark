#!/bin/sh
# ** AUTO GENERATED **

# 2.2.3 - Ensure Avahi Server is not installed (Automated)
systemctl stop avahi-daemon.socket avahi-daemon.service
yum remove avahi-autoipd avahi -y

