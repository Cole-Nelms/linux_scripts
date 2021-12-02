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
# and the directory that the
# repo has installed my configs
# and it will copy over files.
# Make sure to run as root.

!/bin/bash

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

# Copy the repo config files into the config directories
echo "cp $2/i3/gruvbox/config ./.config/i3/"
cp $2/i3/gruvbox/config ./.config/i3/

echo "cp $2/kitty/gruvbox/kitty.conf ./.config/kitty/"
cp $2/kitty/gruvbox/kitty.conf ./.config/kitty/

echo "cp $2/compton/gruvbox/compton.conf ./.config/"
cp $2/compton/gruvbox/compton.conf ./.config/

echo "cp $2/vim/.vimrc ./"
cp $2/vim/.vimrc ./

echo "cp $2/walpaper/walpaper.jpg ./Pictures/"
cp $2/walpaper/walpaper.jpg ./Pictures/

