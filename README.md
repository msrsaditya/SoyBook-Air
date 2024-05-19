# 2022 M2 Macbook Air Setup

![Wallpaper](https://github.com/msrsaditya/soybook-air/blob/main/screenshot.png)

# Programs I Use and Recommend

- **Browser:** Brave Browser
- **Code Editor:** Neovim
- **File Manager:** LF
- **Terminal Emulator:** Alacritty
- **Video Player:** IINA
- **Window Manager:** Rectangle

Along With Some Default Programs Like ZSH Shell, Finder, Whatsapp, Apple Mail etc.

# Why Mac?

- Fastest Consumer Chips in the Market (Both CPU & GPU)
- Remarkable Power Efficiency
- Easy Portability and Sleek Design
- Good Developer Experience
- Good UI/UX

Although you can get some of these things in Linux as well, Linux desktop is kind of abandoned. There's no official Whatsapp, Spotify, Amazon Prime, or "Insert any Normie App" client. Linux also doesn't support professional tools like Adobe Photoshop (the alternatives are okay at best). The market share is a single-digit percentage, and everything is fragmented, creating a paradox of choice for a new user. Windows is riddled with ads, telemetry, AI, and planned obsolescence. MacOS is a good balance between the two, although it is very expensive and creates a walled garden with limited customizations, not to mention everything is non-free (non-libre).

Picking an OS is like picking your poison; I picked MacOS 🙃

# Installation/Setup
Make sure to have xcode tools installed
```bash
xcode-select --install
```
Run the Dotfiles Shell Script
```bash
curl -O "https://raw.githubusercontent.com/msrsaditya/SoyBook-Air/main/dotfiles.sh"
```
Then give executable permissions to dotfiles.sh script
```bash
sudo chmod +x ~/path/to/dotfiles.sh
```
Finally run the script
```bash
sudo sh dotfiles.sh
```
The script will automatically install all dependencies, copies all config files, fixes many mac default settings and so on...

Note: Some of the settings are configured to me, like my email, name etc. Make sure to change these before running the script.
