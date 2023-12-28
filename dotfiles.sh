#!/bin/sh

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew Package Manager 
git clone https://github.com/Homebrew/install
cd install
sudo chmod +x install.sh
./install.sh
cd
sudo rm -rf install

# Setup Homebrew 
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shashank/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Install Necessary Packages From Homebrew
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font htop jupyter lf neofetch neovim node openjdk python3 trash zsh-autosuggestions zsh-syntax-highlighting
brew install --cask alacritty brave-browser iina rectangle visual-studio-code whatsapp
brew update;brew upgrade;brew autoremove;brew cleanup;brew doctor

# Setup OpenJDK
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

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
sudo cp ~/soybook-air/scripts/share.sh /usr/local/bin/share.sh
sudo chmod +x /usr/local/bin/share.sh

cp ~/soybook-air/zsh/zshrc ~/.zshrc

sudo rm -rf soybook-air

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
sudo nvim /etc/pam.d/sudo
auth sufficient pam_tid.so # Add this to First Line

# Get Access to ~/.local Directory for Applications like Neovim, lf etc.
sudo chown -R shashank:staff ~/.local

# Setup Git SSH
ssh-keygen -t ed25519 -C "msrsaditya@gmail.com"
cat ~/.ssh/id_ed25519.pub # Copy Paste this Key in GitHub
ssh -T git@github.com # Test
