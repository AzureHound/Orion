#!/bin/bash

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -int 0

# Change screenshot format to JPG
defaults write com.apple.screencapture type jpg

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Avoid creating .DS_Store files on USB volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Set the icon size of Dock items to 64 pixels
defaults write com.apple.dock tilesize -int 64

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Show hidden apps in the Dock
defaults write com.apple.Dock showhidden -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Move windows by holding ctrl+cmd and dragging any part of the window
defaults write -g NSWindowShouldDragOnGesture -bool true # 

# Application Settings

## Finder
defaults write com.apple.Finder AppleShowAllFiles -boolean true # Show hidden files in Finder
defaults write com.apple.finder _FXSortFoldersFirst -bool true # Keep folders on top when sorting by name
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # Search the current folder by default
defaults write com.apple.finder AppleShowAllExtensions -boolean true # Show all filename extensions in Finder

## App Store
defaults write com.apple.commerce AutoUpdate -bool true # Turn on app auto-update
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1 # Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1 # Download newly available updates in background
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1 # Install System data files & security updates
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true # Enable the automatic update check

## Photos
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true # Prevent Photos from opening automatically when devices are plugged in

# Restart
killall Dock
killall Finder

echo "All settings have been applied. Some changes may require a logout/restart to take effect."
