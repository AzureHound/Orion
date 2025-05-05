## Init

```sh
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```sh
touch ~/.hushlogin

brew analytics off
rm -rf ~/Library/Application\ Support/Homebrew/analytics

brew bundle install --file=Brewfile # Install brew pkgs
```

```
npm install -g cz-git commitizen
```

---

```sh
# Install tgpt
curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
```

```sh
# Ollama
ollama run deepseek-r1:8b
```

## defaults

```sh
# Dock
defaults write com.apple.dock "autohide-delay" -float "0.2" # Hide Animation Delay
defaults write com.apple.dock "autohide-time-modifier" -float "1" # Dock Auto-hide time
```

```sh
# Screenshots
defaults write com.apple.screencapture "type" -string "jpg" # Set screenshot format to JPG
defaults write com.apple.screencapture "disable-shadow" -bool "true" # Disable screenshot shadows
defaults write com.apple.screencapture location ~/Pictures/Screenshots # Set screenshot save location
```

```sh
# Finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" # Show hidden files
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2" # Set default list view size
```

```sh
# Apple Terminal
defaults write com.apple.Terminal "FocusFollowsMouse" -bool "true" # Enable focus follows mouse
```

```sh
# Misc
defaults write -g KeyRepeat -int 0.02 # Set extremely fast key repeat
defaults write -g NSWindowShouldDragOnGesture -bool true # Allow window dragging from anywhere
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false" # Disable "downloaded from internet" warnings
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false # Don't restore System Preferences windows
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true # Prevent auto-opening of apps when connecting devices
```

```sh
# Reset Dock, Finder, Terminal, & SystemUIServer
killall Finder \
killall Terminal \
killall Dock \
killall SystemUIServer
```
