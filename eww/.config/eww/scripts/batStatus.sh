#!/bin/sh
battery="$(cat /sys/class/power_supply/BAT0/status)"
capacity="$(cat /sys/class/power_supply/BAT0/capacity)"

case $battery in 
  Full) echo "";;
  Charging) echo "";;
  Discharging)
    if [[ "$capacity" -ge 72 ]] && [[ "$capacity" -lt 90 ]]
    then
      echo ""
    elif [[ "$capacity" -ge 54 ]] && [[ "$capacity" -lt 72 ]]
    then 
      echo ""
    elif [[ "$capacity" -ge 36 ]] && [[ "$capacity" -lt 54 ]]
    then
      echo ""
    elif [[ "$capacity" -ge 18 ]] && [[ "$capacity" -lt 36 ]]
    then
      echo ""
    else
      echo ""
    fi
    ;;
    *) echo $status;;
esac
