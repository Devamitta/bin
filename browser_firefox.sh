#!/usr/bin/env bash

# Search for the firefox window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "firefox" | cut -d" " -f1)

# If Anki firefox window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
