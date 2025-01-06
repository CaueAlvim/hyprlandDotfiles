#!/bin/bash

# ----------------------------------------------------- 
# Quit all running waybar instances
# -----------------------------------------------------

if pgrep "waybar" > /dev/null ; then
	killall waybar
	pkill waybar
	sleep 0.2
else
	return
fi

waybar & disown
sleep 0.2

notify-send "Waybar" "Reloaded successfully!"
