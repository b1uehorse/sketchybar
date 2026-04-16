#!/usr/bin/env bash
PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ "$CHARGING" != "" ]; then
    ICON="󰂄"
    COLOR=0xff89dceb
elif [ "$PERCENTAGE" -gt 60 ]; then
    ICON="󰁹"
    COLOR=0xffa6e3a1
elif [ "$PERCENTAGE" -gt 30 ]; then
    ICON="󰁾"
    COLOR=0xfff9e2af
else
    ICON="󰁺"
    COLOR=0xfff38ba8
fi

sketchybar --set $NAME icon="$ICON" background.color=$COLOR
