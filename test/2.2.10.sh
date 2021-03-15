#!/bin/sh
# ** AUTO GENERATED **

# 2.2.10 Ensure FTP Server is not installed (Automated)

rpm -q vsftpd | grep -E "package vsftpd is not installed" || exit $1
