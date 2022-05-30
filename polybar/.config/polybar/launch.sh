#!/usr/bin/env bash

# Terminate already running bar instances
pkill polybar
sleep 1;

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar-i3 &
  done
else
  polybar --reload mainbar-i3 &
fi

echo "Bars launched..."

