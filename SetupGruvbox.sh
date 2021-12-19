
# This script is meant to setup and
# automatically configure my i3
# and other program settings. It
# assumes that the apps for the
# config files are installed.
# It is pretty straight
# forward, it takes a username
# and a directory as arguments.
# Just pass the user which you
# intent to use the configs for
# and the directory of this repository
# (Example: '~/repos/Linux-Scripts/)
# and it will copy configs from the
# repo into your home directories
# program config files.
# Make sure to run as root.
# Have fun!!

#!/bin/bash

# Make config directories
echo "mkdir -p /home/$1/.config/i3/"
mkdir -p /home/$1/.config/i3/

echo "mkdir -p /home/$1/.config/kitty/"
mkdir -p /home/$1/.config/kitty/

echo "mkdir -p /home/$1/Pictures/"
mkdir -p /home/$1/Pictures/

# cd into user home
echo "cd /home/$1/"
cd /home/$1/
echo ""

# Copy the repo config files into the config directories
echo "cp $2/Gruvbox/Standard/Bash/.bashrc ./"
cp $2/Gruvbox/Standard/Bash/.bashrc ./

echo "cp $2/Gruvbox/Standard/I3/config ./.config/i3/"
cp $2/Gruvbox/Standard/I3/config ./.config/i3/

echo "cp $2/Gruvbox/Standard/Kitty/kitty.conf ./.config/kitty/"
cp $2/Gruvbox/Standard/Kitty/kitty.conf ./.config/kitty/

echo "cp $2/Gruvbox/Standard/Compton/compton.conf ./.config/"
cp $2/Gruvbox/Standard/Compton/compton.conf ./.config/

echo "cp $2/Gruvbox/Standard/Vim/.vimrc ./"
cp $2/Gruvbox/Standard/Vim/.vimrc ./

echo "cp $2/Gruvbox/Standard/Walpaper/walpaper.jpg ./Pictures/"
cp $2/Gruvbox/Standard/Walpaper/walpaper.jpg ./Pictures/

