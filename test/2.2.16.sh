#!/bin/sh
# ** AUTO GENERATED **

# 2.2.16 Ensure mail transfer agent is configured for local-only mode (Automated)

out=$(netstat -an | grep LIST | grep ":25" | awk {'print $4'} | grep -v "127.0.0.1" | grep -v "::1")
[[ -z "${out}" ]] || exit 1
