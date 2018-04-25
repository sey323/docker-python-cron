#!/bin/bash
. /root/env.sh
python /load_json.py  >> /val/log/cron.log 2>&1
