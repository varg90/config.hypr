#!/usr/bin/env bash

TV_MONITOR_NAME="HDMI-A-1"

if hyprctl monitors | grep -q "$TV_MONITOR_NAME"; then
  hyprctl keyword monitor "$TV_MONITOR_NAME, disable"
else
  hyprctl keyword monitor "$TV_MONITOR_NAME, 3840x2160@60.00Hz, 0x0, 1"
fi
