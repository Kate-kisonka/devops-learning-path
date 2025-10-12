#!/bin/bash
echo "=== Проверка дискового пространства ==="
df -h | grep -E "(Filesystem|/dev/)"
echo ""
echo "Проверено: $(date)"
