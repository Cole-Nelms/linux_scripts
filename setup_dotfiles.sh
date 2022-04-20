
# This script is meant to setup and
# automatically configure my i3
# and other program settings. It
# assumes that the apps for the
# config files are installed.
# It is pretty straight
# forward, it takes a
# directory as an argument.
# Just pass the directory
# of this repository
# (Example: '~/linux_dotfiles/')
# and it will copy configs from the
# repo into your home directories
# program config files.
# You may have to run as root.
# Have fun!!

#!/bin/bash

# cd into user home
echo "cd ~/"
cd ~/
echo ""


# Delete exiting config files
echo "rm .bashrc"
rm .bashrc

echo "rm .vimrc"
rm .vimrc

echo "rm .config/i3/config"
rm .config/i3/config

echo "rm .config/kitty/config"
rm .config/kitty/config

echo "rm Pictures/walpaper.jpg"
rm Pictures/walpaper.jpg


# Make config directories
echo "mkdir -p .config/i3/"
mkdir -p .config/i3/

echo "mkdir -p .config/kitty/"
mkdir -p .config/kitty/

echo "mkdir -p Pictures/"
mkdir -p Pictures/


# cd into repo
echo "cd $1"
cd $1
echo ""


# Copy the repo config files into the config directories
echo "cp .bashrc ~/"
cp .bashrc ~/

echo "cp .vimrc ~/"
cp .vimrc ~/

echo "cp i3/config ~/.config/i3/"
cp i3/config ~/.config/i3/

echo "cp kitty.conf ~/.config/kitty/"
cp kitty.conf ~/.config/kitty/

echo "cp walpaper.jpg ~/Pictures/"
cp walpaper.jpg ~/Pictures/

