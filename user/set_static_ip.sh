#!/bin/bash

INTERFACE=$(ip a | grep -E "^[0-9]+: enx" | grep -v "lo:" | awk -F': ' '{print $2}' | head -1)
echo "$INTERFACE"

if [ -n "$INTERFACE" ]; then
    sudo ip link set $INTERFACE up
    sudo ip addr add 172.32.0.100/24 dev $INTERFACE
    echo "Luckfox Pico настроен на интерфейс $INTERFACE с IP 172.32.0.100"
    ping -c 2 172.32.0.93
else
    echo "Luckfox Pico не найдена"
fi