#!/bin/sh

## Download and Run this Script as a Prerequisite

# curl -O "https://raw.githubusercontent.com/msrsaditya/SoyBook-Air/main/dotfiles.sh"
# sudo chmod +x dotfiles.sh
# sudo sh dotfiles.sh

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew Package Manager 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shashank/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Install Necessary Packages From Homebrew
brew tap homebrew/cask-fonts
brew install alacritty brave-browser fastfetch font-jetbrains-mono-nerd-font htop iina lf neovim python3 rectangle trash whatsapp zsh-autosuggestions zsh-syntax-highlighting
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Copy config From Dotfiles
git clone https://github.com/msrsaditya/soybook-air

mkdir -p ~/.config/alacritty
cp ~/soybook-air/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

mkdir -p ~/.config/lf
cp ~/soybook-air/lf/colors ~/.config/lf/colors
cp ~/soybook-air/lf/icons ~/.config/lf/icons
cp ~/soybook-air/lf/lfrc ~/.config/lf/lfrc

mkdir -p ~/.config/nvim
cp ~/soybook-air/nvim/init.lua ~/.config/nvim/init.lua

sudo mkdir -p /usr/local/bin
sudo cp ~/soybook-air/scripts/download.sh /usr/local/bin/download.sh
sudo cp ~/soybook-air/scripts/movie.sh /usr/local/bin/movie.sh
sudo cp ~/soybook-air/scripts/share.sh /usr/local/bin/share.sh
sudo cp ~/soybook-air/scripts/whois.sh /usr/local/bin/whois.sh
sudo chmod +x /usr/local/bin/download.sh
sudo chmod +x /usr/local/bin/movie.sh
sudo chmod +x /usr/local/bin/share.sh
sudo chmod +x /usr/local/bin/whois.sh

cp ~/soybook-air/zsh/zshrc ~/.zshrc

cp ~/soybook-air/git/gitconfig ~/.gitconfig
cp ~/soybook-air/git/gitignore_global ~/.gitignore_global

sudo rm -rf soybook-air

# Get Browser Bookmarks File
curl -O "https://raw.githubusercontent.com/msrsaditya/Collections/main/Bookmarks.html"

## Configure Settings

# Reduce Dock Response Time
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Change Hostname to Macbook
sudo scutil --set HostName MacBook

# Remove Last Login Line on First Line of Terminal
touch ~/.hushlogin

# Use TouchID for SUDO Commands
sudo sed -i '' '3s/^/auth       sufficient     pam_tid.so\n/' /etc/pam.d/sudo

# Get Access to ~/.local Directory for Applications like Neovim, lf etc.
sudo chown -R shashank:staff ~/.local

# Setup Git SSH
ssh-keygen -t ed25519 -C "msrsaditya@gmail.com"
copy ~/.ssh/id_ed25519.pub # Copy Paste this Key in GitHub SSH/GPG Keys Section

## Test
# ssh -T git@github.com
