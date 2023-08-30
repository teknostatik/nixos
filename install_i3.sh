#!/bin/bash

# Script to configure i3 WM on NixOS
# Only installs what's needed for i3, so should be called from other scripts
# It assumes you are logged in as the user who will be using i3

echo "----------------------"
echo "i3 Installation Script"
echo "----------------------"

# Set up i3. Comment this out if you want to use your own config file or build your config from scratch.

wget https://raw.githubusercontent.com/teknostatik/i3_config/main/config
wget https://raw.githubusercontent.com/teknostatik/i3_config/main/lock.sh
wget https://raw.githubusercontent.com/teknostatik/i3_config/main/kitty.conf
wget https://raw.githubusercontent.com/teknostatik/i3_config/main/polybar_config
mkdir ~/.config/i3
mv config ~/.config/i3/
sudo mv lock.sh ~/.config/i3/
mkdir ~/.config/kitty
mv kitty.conf ~/.config/kitty/
mkdir ~/.config/polybar
mv polybar_config ~/.config/polybar/config

echo "------------------------------------------------------------------------"
echo "i3 is now installed. Log out and choose it from your window manager menu"
echo "------------------------------------------------------------------------"


