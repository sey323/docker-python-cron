#!/bin/sh
printenv | awk '{print "export " $1}' > /root/env.sh
/usr/sbin/cron -f
