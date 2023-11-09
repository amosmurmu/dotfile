#!/bin/bash

# Install Neovim
sudo apt-get update
sudo apt-get install neovim
sudo pacman install neovim 
# Clone LazyNvim
git clone https://github.com/lazynvim/lazynvim ~/.config/nvim

# Install Plugins
nvim +PackerInstall +qall

# Print a message
echo "Neovim with LazyNvim and plugins is now set up."

