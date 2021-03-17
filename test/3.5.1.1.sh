#!/bin/sh
# ** AUTO GENERATED **

# 3.5.1.1 Ensure FirewallD is installed (Automated)

rpm -q firewalld | grep -E "^firewalld-"
app1=$?

if [[ $app1 -eq 1 ]]; then
        exit 1
fi
