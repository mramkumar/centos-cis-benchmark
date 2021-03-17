#!/bin/sh
# ** AUTO GENERATED **

# 3.4.2 Ensure SCTP is disabled (Automated)

modprobe -n -v sctp | grep -E "(install /bin/true|FATAL: Module sctp not found.)" || exit $?
