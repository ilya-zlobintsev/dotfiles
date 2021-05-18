#!/bin/sh

BATTERY="sony_controller_battery_a4:ae:12:d3:88:60"

CHARGE="$(cat /sys/class/power_supply/$BATTERY/capacity)"

if [ -n "$CHARGE" ]; then
	echo "$CHARGE"
fi
