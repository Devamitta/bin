#!/usr/bin/env bash

# mount fileserver
~/.local/bin/mnt.sh

# Launch Nemo in the background
nemo &

# Capture the process ID of the Nemo instance
nemo_pid=$!

# Wait for Nemo to finish
wait $nemo_pid

# unmount fileserver after Nemo is closed
~/.local/bin/umnt.sh


