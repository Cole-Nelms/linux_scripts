# This is a simple script
# for building makefiles.
# it can be useful for 
# automating the building
# process. Just supply
# the directory of the
# make file, and it
# will make it. Alternatively,
# you can hardcode it
# depending on your use case.
# Hope it helps!

#!/bin/bash

clear

# Store current directory before changing
original_dir=$(pwd)

# Change into makefile directory and make
cd $1
make

# Go back to original
cd $original_dir

