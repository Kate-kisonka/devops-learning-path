echo "=== АНАЛИЗ СИСТЕМЫ ==="
echo "Дата: $(date)"
echo ""

echo "=== ПАМАТЬ ==="
MEM_TOTAL=$(free -m | grep '^Mem:' | awk '{print $2}')
MEM_USED=$(free -m | grep '^Mem:' | awk '{print$3}')
MEM_PERCENT=$((MEM_USED * 100 / MEM_TOTAL))

echo "Всего памяти: ${MEM_TOTAL}MB"
echo "Используется: ${MEM-USED}MB (${MEM_PERCENT}%)"

if [ $MEM_PERCENT -gt 80 ]; then
	echo "Внимание: Высокое использование памяти!"
else 
	echo "Память в норме"
fi
echo ""

echo "=== ДИСК ==="
DISK_USAGE=$(df -h / | tail -l | awk '{print $5}' | sed 's/%//')
echo "Использование корневого раздела: ${DISK_USAGE}%"

if [ $DISK_USAGE -gt 90 ]; then
	echo "Критично: Мало места на диске!"
elif [ $DISK_USAGE -gt 80 ]; then
	echo "ВНИМАНИЕ: Заканчивается место на диске!"
else
	echo "Место на диске в норме"
fi
echo ""

echo "=== ТОП-3 ПРОЦЕССА ПО CPU  ==="
ps aux --sort=-%mem | head -4 | tail -3 | awk '{print $11 " - " $4"%"}'
