#!/bin/sh
# ** AUTO GENERATED **

# 2.2.12 Ensure IMAP and POP3 server is not installed (Automated)

rpm -q dovecot | grep -E "package dovecot is not installed" || exit $1
