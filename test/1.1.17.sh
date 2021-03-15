#!/bin/sh
# ** AUTO GENERATED **

# 1.1.17 Ensure separate partition exists for /home (Automated)

mount | grep /home || exit $?
