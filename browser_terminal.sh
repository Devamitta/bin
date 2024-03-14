#!/usr/bin/env bash

# Search for the terminal window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "terminal" | cut -d" " -f1)

# If Anki terminal window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
