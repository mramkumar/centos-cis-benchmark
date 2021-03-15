#!/bin/sh
# ** AUTO GENERATED **

# 1.9 Ensure updates, patches, and additional security software are installed (Automated)

yum check-update --security 2>&1 | grep "No packages needed for security" || exit $?
