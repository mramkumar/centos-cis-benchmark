#!/bin/sh
# ** AUTO GENERATED **

# 3.4.1 Ensure DCCP is disabled (Automated)

modprobe -n -v dccp | grep -E "(install /bin/true|FATAL: Module dccp not found.)" || exit $?
