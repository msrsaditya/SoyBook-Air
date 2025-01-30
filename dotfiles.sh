#!/bin/bash

### Prerequisites
## Install xcode command line tools (for tools like git)
# xcode-select --install

## Download and run this script
# curl -O "https://raw.githubusercontent.com/msrsaditya/SoyBook-Air/main/dotfiles.sh"
# sudo chmod +x dotfiles.sh
# bash dotfiles.sh

# Install Homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shashank/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Install necessary packages from Homebrew
brew install alacritty brave-browser entr fastfetch font-jetbrains-mono-nerd-font htop iina lf neovim pearcleaner python3 trash whatsapp zsh-autosuggestions zsh-syntax-highlighting
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Clone necessary repositories
git clone https://github.com/msrsaditya/soybook-air

## Copy config from dotfiles

# Alacritty
mkdir -p ~/.config/alacritty
cp ~/soybook-air/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

# FastFetch
mkdir -p ~/.config/fastfetch/
cp ~/soybook-air/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

# Git
cp ~/soybook-air/git/gitconfig ~/.gitconfig
cp ~/soybook-air/git/gitignore_global ~/.gitignore_global

# LF
mkdir -p ~/.config/lf
cp ~/soybook-air/lf/colors ~/.config/lf/colors
cp ~/soybook-air/lf/icons ~/.config/lf/icons
cp ~/soybook-air/lf/lfrc ~/.config/lf/lfrc

# Neovim
mkdir -p ~/.config/nvim
cp ~/soybook-air/nvim/init.lua ~/.config/nvim/init.lua

# ZSH
cp ~/soybook-air/zsh/zshrc ~/.zshrc

# Delete eseless folders after use
sudo rm -rf soybook-air

# Download browser bookmarks file
# curl -O "https://raw.githubusercontent.com/msrsaditya/Collections/main/Bookmarks.html"

## Settings and Tweaks

# Reduce dock response time
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Also Turn On Settings > Desktop & Dock > Automatically Hide and Show the Dock

# Change hostname to 'Macbook'
sudo scutil --set HostName MacBook

# Remove 'Last Login' info on opening terminal
touch ~/.hushlogin

# Use TouchID instead of password for SUDO commands
sudo sed -i '' '3s/^/auth       sufficient     pam_tid.so\n/' /etc/pam.d/sudo

# Give access to ~/.local directory for applications like neovim, lf etc.
sudo mkdir -p ~/.local
sudo chown -R shashank:staff ~/.local

## Setup git SSH
# ssh-keygen -t ed25519 -C "msrsaditya@gmail.com"
# pbcopy < ~/.ssh/id_ed25519.pub 
# Now paste your clipboard in GitHub SSH/GPG keys section

## Test
# ssh -T git@github.com

# Also, delete all useless files/folders after usage
# And don't forget to give all permissions to programs like alacritty, lf etc. in MacOS settings
