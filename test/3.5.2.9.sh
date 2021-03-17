#!/bin/sh
# ** AUTO GENERATED **

# 3.5.2.9 Ensure default deny firewall policy (Automated)

iptables -L | egrep -q "Chain[[:space:]]+INPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
iptables -L | egrep -q "Chain[[:space:]]+FORWARD[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
iptables -L | egrep -q "Chain[[:space:]]+OUTPUT[[:space:]]+" | egrep -q "policy[[:space:]]+DROP" || exit 1
