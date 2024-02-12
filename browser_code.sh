#!/usr/bin/env bash

# Search for the Visual Studio window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "Visual Studio" | cut -d" " -f1)


# If Visual Studio window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
