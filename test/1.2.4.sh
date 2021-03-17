#!/bin/sh

# 1.2.4 Ensure Red Hat Subscription Manager connection is configured (Manual)

subscription-manager identity|grep '^org ID:\s*[0-9]' || exit $?
