#!/bin/sh
# ** AUTO GENERATED **

# 2.2.4 Ensure CUPS is not installed (Automated)

rpm -q cups | grep -E "package cups is not installed" || exit $1

