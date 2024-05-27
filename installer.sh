#!/bin/bash
cd # Go to home directory

# Steps taken from https://docs.ros.org/en/jazzy/Installation/Ubuntu-Install-Debians.html

# Set locale
locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

# Enable universe repository
sudo apt install software-properties-common -y
sudo add-apt-repository universe -y

# Add the GPG key
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# Add it to the sources list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Update and install dev tools
sudo apt update && sudo apt install ros-dev-tools -y

# Update and upgrade
sudo apt update -y
sudo apt upgrade -y

# Install the chosen version and distro
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC sudo apt install ros-$1-$2 -y
