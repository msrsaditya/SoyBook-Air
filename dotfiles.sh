#!/bin/bash

# A Simple Script to Setup MacOS According to My Needs

### Prerequisites
## Install Xcode Command Line Tools (For Tools Like Git)
# xcode-select --install

## Download and Run this Script
# curl -O "https://raw.githubusercontent.com/msrsaditya/SoyBook-Air/main/dotfiles.sh"
# sudo chmod +x dotfiles.sh
# bash dotfiles.sh

# Install Homebrew Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shashank/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Install Necessary Packages From Homebrew
brew install alacritty brave-browser chatgpt fastfetch font-jetbrains-mono-nerd-font htop iina lf neovim python3 rectangle trash whatsapp zsh-autosuggestions zsh-syntax-highlighting
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Clone Necessary Repositories
git clone https://github.com/msrsaditya/soybook-air
git clone https://github.com/msrsaditya/SimpleScripts

## Copy Config From Dotfiles

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

# Zsh
cp ~/soybook-air/zsh/zshrc ~/.zshrc

# Shell Scripts
sudo mkdir -p /usr/local/bin
sudo cp ~/SimpleScripts/MacOS/download.sh /usr/local/bin/download.sh
sudo cp ~/SimpleScripts/MacOS/movie.sh /usr/local/bin/movie.sh
sudo cp ~/SimpleScripts/MacOS/share.sh /usr/local/bin/share.sh
sudo cp ~/SimpleScripts/MacOS/timer.sh /usr/local/bin/timer.sh
sudo cp ~/SimpleScripts/MacOS/whois.sh /usr/local/bin/whois.sh
sudo chmod +x /usr/local/bin/download.sh
sudo chmod +x /usr/local/bin/movie.sh
sudo chmod +x /usr/local/bin/share.sh
sudo chmod +x /usr/local/bin/timer.sh
sudo chmod +x /usr/local/bin/whois.sh

# Delete Useless Stuff After Use
sudo rm -rf soybook-air SimpleScripts

# Download Browser Bookmarks File
curl -O "https://raw.githubusercontent.com/msrsaditya/Collections/main/Bookmarks.html"

## Settings and Tweaks

# Reduce Dock Response Time
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Also Turn On Settings > Desktop & Dock > Automatically Hide and Show the Dock

# Change Hostname to Macbook
sudo scutil --set HostName MacBook

# Remove 'Last Login' Info on Opening Terminal
touch ~/.hushlogin

# Use TouchID Instead of Password for SUDO Commands
sudo sed -i '' '3s/^/auth       sufficient     pam_tid.so\n/' /etc/pam.d/sudo

# Give Access to ~/.local Directory for Applications like Neovim, lf etc.
sudo mkdir -p ~/.local
sudo chown -R shashank:staff ~/.local

## Setup Git SSH
# ssh-keygen -t ed25519 -C "msrsaditya@gmail.com"
# pbcopy < ~/.ssh/id_ed25519.pub 
# Now Paste Your Clipboard in GitHub SSH/GPG Keys Section

## Test
# ssh -T git@github.com

# Also, Delete all Useless Files/Folders After Usage
# And Don't Forget to Give All Permissions to Programs Like Alacritty, LF etc. in MacOS Settings
