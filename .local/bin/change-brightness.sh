MONITOR_INFO="$(ddcutil getvcp 10 -t)"
MONITOR_INFO=($MONITOR_INFO)
CURRENT_BRIGHTNESS=${MONITOR_INFO[3]}

if [[ $1 == "+" ]]; then
    ddcutil setvcp 10 $(($CURRENT_BRIGHTNESS + 10))
elif [[ $1 == "-" ]]; then
    ddcutil setvcp 10 $(($CURRENT_BRIGHTNESS - 10))
fi
