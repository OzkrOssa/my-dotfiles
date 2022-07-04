#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using def:wault config location ~/.config/polybar/config
polybar bar &
#polybar bar_external &
external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $external_monitor = *connected* ]]; then
    polybar bar_external &
fi

#for m in $(polybar --list-monitors | cut -d":" -f1); do
#  MONITOR=$m polybar --reload bar &
#  MONITOR=$m polybar --reload bar_external &
#done

echo "Polybar launched..."
