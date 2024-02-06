#!/usr/bin/env bash

# Search for the firefox window using wmctrl and grep
anki_browser_window=$(wmctrl -l -x | grep "firefox" | cut -d" " -f1)

# If Anki firefox window is found, activate it
if [ -n "$anki_browser_window" ]; then
    xdotool windowactivate "$anki_browser_window"
fi
