#!/bin/bash

# Έλεγχος αν τρέχει bluetooth service
if ! systemctl is-active --quiet bluetooth; then
    echo ""
    exit 0
fi

# Έλεγχος αν υπάρχει controller χωρίς να μπλοκάρει
CONTROLLER=$(timeout 1 bluetoothctl list 2>/dev/null)
if [ -z "$CONTROLLER" ]; then
    echo ""
    exit 0
fi

# Αν υπάρχει controller, δείξε κατάσταση
POWER=$(timeout 1 bluetoothctl show 2>/dev/null | awk '/Powered:/ {print $2}')
if [ "$POWER" = "yes" ]; then
    DEV=$(timeout 1 bluetoothctl info 2>/dev/null | awk '/Connected: yes/ {print $2}')
    [ -n "$DEV" ] && echo " $DEV" || echo " On"
else
    echo "󰂲 Off"
fi
