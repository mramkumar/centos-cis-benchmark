#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.7 Ensure SETroubleshoot is not installed (Automated)

rpm -q setroubleshoot | grep -E "package setroubleshoot is not installed" || exit $1
