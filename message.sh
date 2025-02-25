#!/usr/bin/env bash
# Start applications
sleep 1
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=telegram-desktop --file-forwarding org.telegram.desktop -- @@u %u @@ &
sleep 1
/usr/bin/flatpak run --branch=stable --arch=x86_64 com.rtosta.zapzap &
sleep 1
/usr/bin/flatpak run --branch=stable --arch=x86_64 org.signal.Signal &
# Wait for a short time to ensure the windows have opened
sleep 3

# Focus and close each window

# Telegram
telegram_window_id=$(xdotool search --onlyvisible --class "TelegramDesktop")
xdotool windowactivate $telegram_window_id
sleep 1
xdotool key --clearmodifiers Alt+F4

# WhatsApp
whatsapp_window_id=$(xdotool search --onlyvisible --class "whatsapp-desktop-linux")
xdotool windowactivate $whatsapp_window_id
sleep 1
xdotool key --clearmodifiers Alt+F4

# Signal
signal_window_id=$(xdotool search --onlyvisible --class "signal")
xdotool windowactivate $signal_window_id
sleep 1
xdotool key --clearmodifiers Alt+F4

sleep 1
/usr/bin/thunderbird &
sleep 1
/usr/bin/birdtray &
sleep 1

# Minimize Thunderbird to tray using birdtray
thunderbird_window_id=$(xdotool search --onlyvisible --class "thunderbird")
if [ -n "$thunderbird_window_id" ]; then
    xdotool windowminimize "$thunderbird_window_id"
else
    echo "Thunderbird window not found."
fi