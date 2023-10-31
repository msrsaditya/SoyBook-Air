#!/bin/zsh

# Install Xcode Command Line Tools Before Hand
# xcode-select --install
# Also clone this repo, git clone https://github.com/msrsaditya/soybook-air

# Install Homebrew
git clone https://github.com/Homebrew/install
cd install
sudo chmod +x install.sh
./install.sh
cd
sudo rm -rf ~/soybook-air/install
cd

# Setup Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shashank/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update;brew clean;brew doctor

# Install Necessary Packages From Homebrew
brew tap homebrew/cask-fonts
brew update;brew clean;brew doctor
brew install font-jetbrains-mono-nerd-font htop lf neofetch neovim openjdk trash zsh-autosuggestions zsh-syntax-highlighting
brew update;brew clean;brew doctor
brew install --cask alacritty brave-browser rectangle visual-studio-code
cd

# Copy config From Dotfiles
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
sudo chmod +x /usr/local/bin/share.sh

cp ~/soybook-air/zsh/zshrc ~/.zshrc

## Configure Settings

# Reduce Dock Response Time
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

# Change Hostname to Macbook
sudo scutil --set HostName Macbook

# Remove Last Login Line on First Line of Terminal
touch ~/.hushlogin

# Use TouchID for SUDO Commands
sudo sed -i '' '2i\
auth sufficient pam_tid.so
' /etc/pam.d/sudo

# Get Access to ~/.local Directory for Applications like Neovim, lf etc.
sudo chown -R shashank:shashank ~/.local
