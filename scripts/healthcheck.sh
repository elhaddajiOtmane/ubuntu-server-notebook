#!/usr/bin/env bash
set -u
printf '=== Host health check (redact before sharing) ===\n'
date -u
printf '\n== OS ==\n'; grep PRETTY_NAME /etc/os-release || true
printf '\n== Uptime ==\n'; uptime || true
printf '\n== Disk ==\n'; df -h || true
printf '\n== Memory ==\n'; free -h || true
printf '\n== Interfaces ==\n'; ip -br addr || true
printf '\n== Default route ==\n'; ip route show default || true
printf '\n== DNS lookup ==\n'; getent ahostsv4 example.com | head -n 2 || true
printf '\nNote: anonymize hostnames, addresses, users, and network details before posting.\n'
