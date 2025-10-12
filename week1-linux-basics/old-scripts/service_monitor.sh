#!/bin/bash
echo "проверка cron"
systemctl is-active cron

echo "проверка fail2ban:"
systemctl is-active fail2ban

echo "проверка network manager"
systemctl is-active NetworkManager

echo "failed процессы"
systemctl --failed

echo "топ 5 процессов по CPU"
ps aux --sort=-%cpu | head -n 6


