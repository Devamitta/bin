#!/usr/bin/env bash

# Search for the GUI window using wmctrl and grep
anki_browser_window=$(wmctrl -l -x | grep "Add new words" | cut -d" " -f1)

# If Anki GUI window is found, activate it
if [ -n "$anki_browser_window" ]; then
    xdotool windowactivate "$anki_browser_window"
fi
