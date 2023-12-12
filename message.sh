#!/usr/bin/env bash


# Start applications
sleep 1
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=telegram-desktop --file-forwarding org.telegram.desktop -- @@u %u @@ &
sleep 1
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=whatsapp-desktop-linux io.github.mimbrero.WhatsAppDesktop &

# Wait for a short time to ensure the windows have opened
sleep 3

# Focus and close each window
telegram_window_id=$(xdotool search --onlyvisible --class "TelegramDesktop")
xdotool windowactivate $telegram_window_id
sleep 1
xdotool key --clearmodifiers Alt+F4

whatsapp_window_id=$(xdotool search --onlyvisible --class "whatsapp-desktop-linux")
xdotool windowactivate $whatsapp_window_id
sleep 1
xdotool key --clearmodifiers Alt+F4
sleep 1
/usr/bin/thunderbird &
sleep 1
/usr/bin/birdtray & 