#!/bin/bash

# Navigate to the Downloads directory
# cd "/home/deva/Downloads/"

# Find the zip file starting with "simsapa-main-ubuntu" and unzip it
# unzip -o Simsapa-*.zip

# Move the desired AppImage from the "linux" folder to /home/deva/
# mv /home/deva/Downloads/linux/*.AppImage /home/deva/

# Remove the zip file
# rm Simsapa-*.zip

# Remove the "linux" directory
# rm -r linux/

# cd "/home/deva/"

# Make all AppImage files executable
# chmod +x /home/deva/*.AppImage

# Find and run the AppImage
appimage_path=$(find /home/deva -name 'Simsapa_Dhamma_Reader*.AppImage' -type f -print -quit)
if [ -n "$appimage_path" ]; then
    "$appimage_path"
else
    echo "AppImage not found."
fi
