#!/bin/zsh

# Install Homebrew

git clone https://github.com/Homebrew/install
cd install
sudo chmod +x install.sh
sudo ./install.sh
cd
sudo rm -rf ~/install.sh

# Install Necessary Packages From Homebrew

brew analytics off
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font htop lf neofetch neovim trash zsh-autosuggestions zsh-syntax-highlighting
brew install --cask alacritty arc rectangle

# Copy config From Dotfiles

git clone https://github.com/msrsaditya/soybook-air

mkdir -p ~/.config/alacritty
cp ~/soybook-air/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

mkdir -p ~/.config/lf
cp ~/soybook-air/lf/colors ~/.config/lf/colors
cp ~/soybook-air/lf/icons ~/.config/lf/icons
cp ~/soybook-air/lf/lfrc ~/.config/lf/lfrc

mkdir -p ~/.config/nvim
cp ~/soybook-air/nvim/init.lua ~/.config/nvim/init.lua

mkdir -p /usr/local/bin
sudo cp ~/soybook-air/scripts/share.sh /usr/local/bin/share.sh

cp ~/soybook-air/zsh/zshrc ~/.zshrc

sudo rm -rf ~/soybook-air

## Configure Settings

# Reduce Dock Response Time

defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Change Hostname to Macbook
sudo scutil --set HostName Macbook

# Remove Last Login Line on Top of Terminal
touch ~/.hushlogin

# Use TouchID for Sudo Commands
sudo sed -i '' '2i\
auth sufficient pam_tid.so
' /etc/pam.d/sudo
