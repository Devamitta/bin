# Check if GoldenDict is running
if pgrep -x "goldendict" > /dev/null
then
    # If it is running, kill it
    killall goldendict
    # Give some time for the process to be killed completely
    sleep 1
fi

# Start GoldenDict
goldendict >/dev/null 2>&1 &