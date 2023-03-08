#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# Set max charging current
chmod 755 /sys/class/power_supply/battery/constant_charge_current_max
echo 4000000 > /sys/class/power_supply/battery/constant_charge_current_max
chmod 755 /sys/class/power_supply/battery/input_current_max
echo 4000000 > /sys/class/power_supply/battery/input_current_max
chmod 444 /sys/class/power_supply/battery/constant_charge_current_max
chmod 444 /sys/class/power_supply/battery/input_current_max
