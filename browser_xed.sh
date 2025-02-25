#!/usr/bin/env bash

# Search for the Xed window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "Xed" | cut -d" " -f1)

# If Xed window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
