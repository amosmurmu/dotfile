#!/bin/bash

# Specify the directory containing dotfiles
DOTFILES_DIR="$HOME/dotfile"

# Check if stow is installed
if ! command -v stow &>/dev/null; then
	echo "Error: Stow is not installed. Please install stow before running this script."
	exit 1
fi

# Change to the dotfiles directory
cd "$DOTFILES_DIR" || exit

# Use stow to symlink ideavimrc to the home directory
stow -t "$HOME" ideavimrc

# Use stow to symlink gradle.properties to the .gradle directory in the home directory
stow -t "$HOME/.gradle" gradle

echo "Configuration files symlinked successfully!"
