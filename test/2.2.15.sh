#!/bin/sh
# ** AUTO GENERATED **

# 2.2.15 Ensure net-snmp is not installed (Automated)

rpm -q net-snmp | grep -E "package net-snmp is not installed" || exit $1
