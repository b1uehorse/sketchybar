#!/usr/bin/env bash
if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on label.color=0xff1e1e2e
else
    sketchybar --set $NAME background.drawing=off label.color=0xff6c7086
fi
