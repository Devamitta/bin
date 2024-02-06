#!/usr/bin/env bash

# Launch Nemo in the background
nemo &

# Capture the process ID of the Nemo instance
nemo_pid=$!

# Wait for Nemo to finish
wait $nemo_pid

# Run your umnt.sh script after Nemo is closed
~/.local/bin/umnt.sh


