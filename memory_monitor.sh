#!/bin/bash
# Memory Monitoring Script
echo "=============================="
echo "   Memory Usage Monitor"
echo "=============================="
echo ""
# Get memory details using free
TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
USED=$(free -m | awk '/^Mem:/ {print $3}')
FREE=$(free -m | awk '/^Mem:/ {print $4}')
AVAILABLE=$(free -m | awk '/^Mem:/ {print $7}')
echo "Total Memory     : ${TOTAL} MB"
echo "Used Memory      : ${USED} MB"
echo "Free Memory      : ${FREE} MB"
echo "Available Memory : ${AVAILABLE} MB"
echo ""
echo "------ Top Memory Processes (top 5) ------"
# Show top 5 memory-consuming processes
top -b -o %MEM | head -n 12
echo ""
echo "=========================================="
