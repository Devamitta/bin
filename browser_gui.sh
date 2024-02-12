#!/usr/bin/env bash

# Search for the GUI window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "Add new words" | cut -d" " -f1)

# If Anki GUI window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
