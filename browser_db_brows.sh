#!/usr/bin/env bash

# Search for the DB Browser window using wmctrl and grep
active_window=$(wmctrl -l -x | grep "DB Browser" | cut -d" " -f1)


# If DB Browser window is found, activate it
if [ -n "$active_window" ]; then
    xdotool windowactivate "$active_window"
fi
