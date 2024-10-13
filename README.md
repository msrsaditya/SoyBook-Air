# My Macbook Air Setup

![Wallpaper](https://github.com/msrsaditya/SoyBook-Air/blob/main/Screenshot.png)

# Programs I Use and Recommend

- **Browser:**  [Brave Browser](https://github.com/brave/brave-browser)
- **File Manager:** [LF](https://github.com/gokcehan/lf)
- **Shell:** [ZSH](https://github.com/zsh-users/zsh)
- **System Information:** [FastFetch](https://github.com/fastfetch-cli/fastfetch)
- **Terminal Emulator:** [Alacritty](https://github.com/alacritty/alacritty)
- **Text Editor:** [Neovim](https://github.com/neovim/neovim)
- **Video Player:** [IINA](https://github.com/iina/iina)

Along With Some Other Apps Like Apple Mail, Finder, ChatGPT, Whatsapp etc.

# Why These Programs?

- Brave Browser is the Most Private and Secure Chromium Based Browser. Read My Detailed Analysis and Benchmarking of Various Browsers [Here](https://medium.com/@msrsaditya/the-best-browser-for-privacy-3f654b6dac7a)
- LF is the Fastest Ranger-Like CLI File Manager. "Fast" as in Code and in Productivity, Both. It is Written in Go, Unlike Ranger (Python, Ugh!).
- ZSH is Fast, Lightweight, BASH-Like, Super Customizable Shell. Also Default on MacOS. Written in C.
- FastFetch is Neofetch, But Fast. Written in C.
- Alacritty is a Blazingly Fast Terminal Emulator with GPU Acceleration. Written in Rust.
- Vim Makes You Productive. Neovim Makes the Code Cleaner. I Write My Configs in Lua. Period.
- IINA is the Best MPV-Like MacOS Native Video Player with Nice UI/UX. Written in Swift.

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
bash dotfiles.sh
```
The script will automatically install all dependencies, copies all config files, fixes many mac default settings and so on...

Note: Some of the settings are configured to me, like my email, name etc. Make sure to change these before running the script.

# Future Ideas
- add config files for apps like brave, iina, vs code etc. Try to automate everything with simple config files
- if possible, automate everything with config files, even the macos settings (this is a very big task!)
- automation, reproducible system with no effort on my side, this is my dream!
