#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.8 Ensure the MCS Translation Service (mcstrans) is not installed (Automated)

rpm -q mcstrans | grep -E "package mcstrans is not installed" || exit $1
