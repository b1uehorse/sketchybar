#!/usr/bin/env bash
# клик по tray-иконке Jot через Accessibility API.
# требуется: System Settings → Privacy & Security → Accessibility → SketchyBar (и Ghostty для ручных вызовов)
osascript -e 'tell application "System Events" to tell process "Jot" to click menu bar item 1 of menu bar 2' 2>/dev/null
