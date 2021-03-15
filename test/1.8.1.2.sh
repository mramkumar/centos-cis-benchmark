#!/bin/sh
# ** AUTO GENERATED **

# 1.8.1.2 Ensure local login warning banner is configured properly (Automated)

out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/issue)
[[ -z "${out}" ]] || exit 1
