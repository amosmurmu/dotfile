#!/bin/bash

# Create .zshrc file
echo 'export ZSH="$HOME/.oh-my-zsh"' > ~/.zshrc
echo 'ZSH_THEME="robbyrussell"' >> ~/.zshrc
echo 'plugins=(git)' >> ~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Change the default shell to zsh
chsh -s $(which zsh)

# Clone and install Awesome Vim configuration
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Print a message
echo "Zsh, Oh My Zsh, and Awesome Vim configuration are now set up. Please restart your terminal to apply the changes."

