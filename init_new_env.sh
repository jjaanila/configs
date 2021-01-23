#!/bin/bash
# Dont run this as sudo or the script will store configuration under /home/root!
# This script will install zsh, oh-my-zsh and my configuration files.
# After oh-my-zsh is installed, you have to close the opened shell with CTRL+D to let the script continue execution
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp "$(pwd)/.tmux.conf" ~/.tmux.conf
cp "$(pwd)/.gitconfig" ~/.gitconfig
cp "$(pwd)/.zshrc" ~/.zshrc