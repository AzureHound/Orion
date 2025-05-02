#!/bin/bash

# ----- SYSTEM IDENTITY CONFIGURATION -----
sudo scutil --set ComputerName "Orion" &&
  sudo scutil --set HostName "Orion" &&
  sudo scutil --set LocalHostName "Orion" &&
  sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Orion"

# ----- TIME SETTINGS -----
sudo systemsetup -settimezone Asia/Kolkata                               # Set timezone to India
sudo defaults write com.apple.menuextra.clock DateFormat -string "HH:mm" # Use 24-hour clock format

# ----- NETWORK SETTINGS -----
# networksetup -setairportnetwork en0 WIFI_SSID WIFI_PASSWORD              # Connect to WiFi network

# ----- DOCK CUSTOMIZATION -----
defaults write com.apple.dock "orientation" -string "bottom"      # Dock bottom
defaults write com.apple.dock "tilesize" -int "64"                # Dock icon size
defaults write com.apple.dock "autohide" -bool "true"             # Auto-hide Dock
defaults write com.apple.dock "autohide-time-modifier" -float "1" # Dock auto-hide time
defaults write com.apple.dock "autohide-delay" -float "0.2"       # Hide Animation Delay
defaults write com.apple.dock "show-recents" -bool "false"        # Disable recent apps section
defaults write com.apple.dock "mineffect" -string "scale"         # Set minimize effect to scale
defaults write com.apple.dock showhidden -bool true               # Show indicators for hidden apps
defaults write com.apple.dock single-app -bool true               # Enable single app mode

# ----- SCREENSHOT SETTINGS -----
defaults write com.apple.screencapture "type" -string "jpg"            # Set screenshot format to JPG
defaults write com.apple.screencapture "disable-shadow" -bool "true"   # Disable screenshot shadows
defaults write com.apple.screencapture location ~/Pictures/Screenshots # Set screenshot save location

# ----- FINDER CUSTOMIZATION -----
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"          # Show all file extensions
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"             # Show hidden files
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"        # Search current folder by default
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"         # Auto-empty old trash items
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"   # Remove toolbar hover delay
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"          # Set default list view size
defaults write com.apple.finder "\_FXSortFoldersFirstOnDesktop" -bool "true" # Sort folders first on desktop

# ----- SAFARI SETTINGS -----
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" # Show full URL in address bar

# ----- TERMINAL SETTINGS -----
defaults write com.apple.Terminal "FocusFollowsMouse" -bool "true" # Enable focus follows mouse
tput bel                                                           # Ring terminal bell

# ----- MISSION CONTROL SETTINGS -----
defaults write com.apple.dock "mru-spaces" -bool "false"       # Disable automatic space reordering
defaults write com.apple.dock "expose-group-apps" -bool "true" # Group windows by application in Mission Control

# ----- PRIVACY AND FEEDBACK SETTINGS -----
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false" # Disable automatic data gathering for feedback

# ----- APP SPECIFIC SETTINGS -----
defaults write com.apple.TextEdit "RichText" -bool "true" # Enable rich text mode in TextEdit

# ----- TIME MACHINE SETTINGS -----
sudo tmutil enable                                                              # Enable Time Machine
tmutil startbackup                                                              # Start initial backup
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true" # Don't prompt to use new disks for Time Machine

# ----- INPUT SETTINGS -----
defaults write NSGlobalDomain com.apple.mouse.scaling -float "3" # Increase mouse tracking speed
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"       # Full keyboard navigation
defaults write -g KeyRepeat -int 0.02                            # Set extremely fast key repeat

# ----- MISC SYSTEM SETTINGS -----
sudo nvram StartupMute=%01                                                            # Mute startup sound
defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false"         # Disable Music app notifications
defaults write -g CGFontRenderingFontSmoothingDisabled -bool false                    # Enable font smoothing
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false" # Hide language indicator
defaults write -g AppleShowScrollBars -string "Automatic"                             # Show scrollbars automatically
defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"                  # Disable "downloaded from internet" warnings
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false            # Disable auto-capitalization
defaults write -g NSWindowShouldDragOnGesture -bool true                              # Allow window dragging from anywhere
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true          # Prevent auto-opening of apps when connecting devices
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false       # Don't restore System Preferences windows

# ----- WALLPAPER -----
# defaults write /Library/Preferences/com.apple.loginwindow DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"

# Restart UI services only once at the end to apply all changes
killall Finder
killall Safari
killall Terminal
killall Music
killall TextEdit
killall Dock
killall SystemUIServer

# ----- HOMEBREW INSTALLATION -----
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

# ----- BREWS INSTALLATION -----
echo "Installing pkgs from Brewfile..."
brew bundle --file=~/Brewfile

# Display completion message in green
echo -e "\033[0;32mDone\033[0m"
