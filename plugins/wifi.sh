#!/usr/bin/env bash
osascript -e 'tell application "System Events" to tell process "ControlCenter" to click (first menu bar item of menu bar 1 whose description starts with "Wi")' 2>/dev/null
