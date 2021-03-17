#!/bin/sh

# 1.2.5 Disable the rhnsd Daemon (Manual)

systemctl is-enabled rhnsd|grep 'masked' || exit $?
