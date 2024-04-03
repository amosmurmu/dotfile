#!/bin/bash

# Specify the directory containing your dotfiles
DOTFILES_DIR="$HOME/dotfile"

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo "Stow is not installed. Please install stow before running this script."
    exit 1
fi

# Check if the dotfiles directory exists
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "Dotfiles directory not found. Please set the correct path in the script."
    exit 1
fi

# Stow Bash configuration
stow -v -t "$HOME" -d "$DOTFILES_DIR" bash

# Stow Ideavimrc configuration
stow -v -t "$HOME" -d "$DOTFILES_DIR" ideavimrc

# Stow Tmux configuration
stow -v -t "$HOME" -d "$DOTFILES_DIR" tmux

# Stowing nvim to .config dir 
stow -v -t ~/.config/ -d "$DOTFILES_DIR" nvim 
echo "Dotfiles setup complete!"

