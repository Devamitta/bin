#!/usr/bin/env bash

# Search for the Anki Browser window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "deva Browse" | cut -d" " -f1)

# If Anki Browser window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
