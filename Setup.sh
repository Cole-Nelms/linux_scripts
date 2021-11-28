# This script is meant to setup and
# automatically configure my i3
# and other program settings. It is
# pretty straight forward, it
# takes a username as an argument.
# Just pass the user which you
# intent to use the configs for
# and it will clone a git repo,
# and copy over files. Make
# sure to run as root.

#!/bin/bash

# Install basic packages
echo "apt update && install vim git ranger htop curl xinit i3 kitty feh compton -y"
apt update && install vim git ranger htop curl xinit i3 kitty feh compton -y

# Make a repository directory
echo "mkdir /home/$1/repos/"
mkdir /home/$1/repos/

# cd into repos directory
echo "cd /home/$1/repos/"
cd /home/$1/repos/

# Clone the repo
echo "git clone https://github.com/Cole-Nelms/linux-config.git"
git clone https://github.com/Cole-Nelms/linux-config.git

# Make config directories
echo "mkdir /home/$1/.config/"
mkdir /home/$1/.config/

echo "mkdir /home/$1/.config/i3/"
mkdir /home/$1/.config/i3/

echo "mkdir /home/$1/.config/kitty/"
mkdir /home/$1/.config/kitty/

echo "mkdir /home/$1/Pictures/"
mkdir /home/$1/Pictures/

# cd into user home
echo "cd /home/$1/"
cd /home/$1/

# Copy the config files into the config directories
echo "cp ./repos/linux-config/i3/gruvbox/config ./.config/i3/"
cp ./repos/linux-config/i3/gruvbox/config ./.config/i3/

echo "cp ./repos/linux-config/kitty/gruvbox/kitty.conf ./.config/kitty/"
cp ./repos/linux-config/kitty/gruvbox/kitty.conf ./.config/kitty/

echo "cp ./repos/linux-config/compton/gruvbox/compton.conf ./.config/"
cp ./repos/linux-config/compton/gruvbox/compton.conf ./.config/

echo "cp ./repos/linux-config/vim/.vimrc ./"
cp ./repos/linux-config/vim/.vimrc ./

echo "cp ./repos/linux-config/walpaper/walpaper.jpg ./Pictures/"
cp ./repos/linux-config/walpaper/walpaper.jpg ./Pictures/

