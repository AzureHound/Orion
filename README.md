
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
brew install --cask iina localsend monitorcontrol obsidian raycasto telegram thunderbird wezterm whatsapp zed zen-browser

# Homebrew Formulae
brew install aria2 atuin bat btop cbonsai curl duf eza fastfetch fd ffmpeg figlet fish fzf glow gcc git git-delta glow grep imagemagick jq lazygit lsd mailsy neovide neovim nu nushell poppler ripgrep sevenzip speedtest-cli starship syncthing telegram tmux warp wget yazi yt-dlp zoxide

# macOS Cli
defaults write com.apple.screencapture type jpg
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

