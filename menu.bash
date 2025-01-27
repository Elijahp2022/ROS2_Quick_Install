#!/bin/bash

# Clear the terminal before the menu
clear

# Prompt the user for a ros2 distro
DISTRO=$(whiptail --inputbox "What ROS2 Distro do you want to install?" 8 39 JAZZY 3>&1 1>&2 2>&3)

# Prompt the user if they want desktop or base
VER=$(whiptail --menu "Which version do you want?" 25 78 16 \
"Desktop" " " \
"ros-Base" " " \
3>&1 1>&2 2>&3)


# Clear the terminal after the menu
clear

# Run the install script
DISTRO=$(echo "$DISTRO" | tr '[:upper:]' '[:lower:]')
VER=$(echo "$VER" | tr '[:upper:]' '[:lower:]')

sudo chmod +x installer.bash
./installer.bash $DISTRO $VER
