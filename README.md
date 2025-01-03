
```sh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```sh
touch ~/.hushlogin

brew analytics off
rm -rf ~/Library/Application\ Support/Homebrew/analytics

# Install Fonts
brew install --cask font-jetbrains-mono-nerd-font font-iosevka-nerd-font font-josefin-sans font-comic-mono font-symbols-only-nerd-font

# Homebrew Casks
brew install --cask iina keepassxc localsend monitorcontrol obsidian raycast telegram warp wezterm whatsapp zed zen-browser

# Homebrew Formulae
brew install ani-cli aria2 atuin asciiquarium bash bat btop cbonsai curl duf eza fastfetch fd ffmpeg figlet fish fontconfig freetype fzf gcc gh git git-delta glow grep hugo imagemagick jq lazygit lsd lua mailsy mas neovide neovim node nu nushell oh-my-posh ollama poppler rar ripgrep ruby sevenzip speedtest-cli starship syncthing tldr tmux tree-sitter tty-clock unbound utf8proc vim wget yazi yt-dlp zoxide zsh

# macOS Cli
defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.Dock showhidden -bool TRUE && killall Dock
defaults write com.apple.dock autohide-delay -float 0; killall Dock
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool TRUE
defaults write -g NSWindowShouldDragOnGesture -bool true
```

```sh
# Install tgpt
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
```

---

```sh
fisher install \
  jorgebucaran/fisher \
  patrickf1/fzf.fish \
  catppuccin/fish \
  gazorby/fish-abbreviation-tips \
  nickeb96/puffer-fish \
  jorgebucaran/autopair.fish \
  dracula/fish
```
