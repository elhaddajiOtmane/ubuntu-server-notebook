# Ubuntu server notebook

Some Linux commands I like to keep handy when a VM is acting weird. The main file is a small read-only shell script that checks the host without changing anything.

```bash
bash scripts/healthcheck.sh
```

## Things I look at
- Disk usage: `df -h` versus directory size: `du -sh`.
- Memory: `free -h`; device layout: `lsblk`.
- Routing and addressing: `ip route`, `ip -br addr`.
- DNS: `getent hosts example.com`.
- Services and errors: `systemctl`, `journalctl`.

The script is meant for a personal Linux VM. Before using commands against any other system, check that you have permission.

## Reference
[Ubuntu Server documentation](https://ubuntu.com/server/docs) · [Linux server imagery](https://commons.wikimedia.org/wiki/Special:MediaSearch?type=image&search=server%20computer)
