#!/usr/bin/env bash

# Search for the Simsapa window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "Simsapa" | cut -d" " -f1)

# If Simsapa window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
