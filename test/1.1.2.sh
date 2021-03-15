#!/bin/sh
# ** AUTO GENERATED **

# 1.1.2 Ensure /tmp is configured (Automated)

mount | grep /tmp || exit $?
