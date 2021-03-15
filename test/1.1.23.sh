#!/bin/sh
# ** AUTO GENERATED **

# 1.1.23 Disable Automounting (Automated)

systemctl is-enabled autofs 2>&1 | grep -E "(disabled|No such file or directory)" || exit $?
