#!/bin/bash

echo "=== Проверка системы ==="
echo "Дата и время: $(date)"
echo "Пользователь: $(whoami)"
echo "Текущая папка: $(pwd)"
echo ""

echo "=== Использование диска ==="
df -h | head -2

echo ""
echo "=== Память ==="
free -h | head -2

echo ""  
echo "=== Топ-5 процессов по CPU ==="
ps aux --sort=-%cpu | head -6
