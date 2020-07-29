#!/bin/bash

SHUTDOWN="Shut down"
LOGOUT="Log out"
SUSPEND="Suspend"
LOCK="Lock Screen"
RESTART="Restart"

OPTIONS="$LOGOUT\n$LOCK\n$SHUTDOWN\n$SUSPEND\n$RESTART" 

CHOICE="$(echo -e $OPTIONS | rofi -theme dropdown -location 3 -width 10 -lines 5 -dmenu)"

if [[ $CHOICE = $SHUTDOWN ]]; then
    systemctl halt
elif [[ $CHOICE == $LOCK ]]; then
    xsecurelock & sleep 0.1 && xset dpms force off
elif [[ $CHOCIE == $SUSPEND ]]; then
    echo "Suspending"
    systemctl suspend
elif [[ $CHOICE == $RESTART ]]; then
    systemctl reboot
elif [[ $CHOICE == $LOGOUT ]]; then
    swaymsg exit
fi
