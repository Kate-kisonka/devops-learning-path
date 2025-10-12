USERNAME=$(whoami)
CURRENT_DIR=$(pwd)
DATE_NOW=$(date)
DISK_USAGE=$(df -h / | tail -l | awk '{print $5}')

echo "=== Info for system ==="
echo "User: $USERNAME"
echo "Corrent folder: $CURRENT_DIR"
echo "Data: $DATE_NOW"
echo "Disk occupied: $DISK_USAGE"

