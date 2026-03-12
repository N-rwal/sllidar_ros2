#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "start copy rplidar.rules to /etc/udev/rules.d/"
sudo cp "$SCRIPT_DIR/rplidar.rules" /etc/udev/rules.d/

echo ""
echo "Restarting udev"
echo ""

sudo service udev reload
sudo service udev restart

echo "finish"
