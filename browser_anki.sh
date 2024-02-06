#!/usr/bin/env bash

# Search for the Anki Browser window using wmctrl and grep
anki_browser_window=$(wmctrl -l -x | grep "deva Browse" | cut -d" " -f1)

# If Anki Browser window is found, activate it
if [ -n "$anki_browser_window" ]; then
    xdotool windowactivate "$anki_browser_window"
fi
