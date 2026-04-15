#!/bin/bash



LOG_FILE="server_report.log"

echo "==== Rapport du $(date +%Y-%m-%d)====" > $LOG_FILE



CPU=$(top -bn1 | grep "Cpu(s)")
DISK=$(df -h | grep -E  "Filesystem|/dev/sda3")
RAM=$(free -h)
TOP5CPU=$(ps aux --sort=-%cpu | head -6)
TOP5RAM=$(ps aux --sort=-%mem | head -6)

echo "CPU : $CPU" >> $LOG_FILE
echo "Disque dur : $DISK" >> $LOG_FILE
echo "RAM : $RAM" >> $LOG_FILE
echo "Processus CPUvores : $TOP5CPU" >> $LOG_FILE
echo "Processus RAMovores : $TOP5RAM" >> $LOG_FILE



