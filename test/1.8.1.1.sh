#!/bin/sh
# ** AUTO GENERATED **

# 1.8.1.1 Ensure message of the day is configured properly (Automated)

out=$(egrep '(\\v|\\r|\\m|\\s)' /etc/motd)
[[ -z "${out}" ]] || exit 1
