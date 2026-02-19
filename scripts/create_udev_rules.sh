#!/bin/bash

echo "start copy rplidar.rules to  /etc/udev/rules.d/"
colcon_cd sllidar_ros2
sudo cp scripts/rplidar.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
