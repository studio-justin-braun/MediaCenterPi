#!/bin/bash
set -e

# Install system packages
sudo apt-get update
sudo apt-get install -y python3 python3-pip python3-tk matchbox-keyboard mousepad git

# Install Python dependencies
pip3 install --user pyudev requests

echo "Installation complete."


