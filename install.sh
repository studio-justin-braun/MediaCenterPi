#!/bin/bash
set -e

# Install system packages
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-tk matchbox-keyboard mousepad git

# Install Python dependencies
pip3 install --user --break-system-packages pyudev requests

# Create desktop shortcut and icon
ICON_PATH="/usr/share/pixmaps/MediaCenterPi.png"
ICON_URL="https://access.st-braun.de/data/Media.png"
sudo wget -q -O "$ICON_PATH" "$ICON_URL"

USER_NAME="${SUDO_USER:-$USER}"
DESKTOP_FILE="/home/$USER_NAME/Desktop/MediaCenterPi.desktop"
cat <<EOF | sudo tee "$DESKTOP_FILE" >/dev/null
[Desktop Entry]
Type=Application
Name=MediaCenterPi
Exec=sudo python3 $(pwd)/mediacenter.py
Icon=$ICON_PATH
Terminal=false
EOF
sudo chmod +x "$DESKTOP_FILE"

echo "Installation complete. Shortcut created at $DESKTOP_FILE"


