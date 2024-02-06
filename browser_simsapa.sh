#!/usr/bin/env bash

# Search for the Simsapa window using wmctrl and grep
anki_browser_window=$(wmctrl -l -x | grep "Simsapa" | cut -d" " -f1)

# If Simsapa window is found, activate it
if [ -n "$anki_browser_window" ]; then
    xdotool windowactivate "$anki_browser_window"
fi
