#!/usr/bin/env bash

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=telegram-desktop --file-forwarding org.telegram.desktop -- @@u %u @@ &

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=whatsapp-desktop-linux io.github.mimbrero.WhatsAppDesktop &

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=start-mailspring --file-forwarding com.getmailspring.Mailspring @@u %U @@ &