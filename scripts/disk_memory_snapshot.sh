#!/usr/bin/env bash
# Read-only snapshot: disk usage, memory, and the top memory consumers.
# Changes nothing on the host - same rule as healthcheck.sh.
set -u

echo "== Disk usage =="
df -h --output=source,size,used,avail,pcent,target -x tmpfs -x devtmpfs

echo
echo "== Memory =="
free -h

echo
echo "== Top 5 processes by memory =="
ps aux --sort=-%mem | head -n 6
