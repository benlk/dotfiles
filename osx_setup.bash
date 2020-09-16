#!/bin/bash

# This assumes that you have already installed git and xcode. How else would you have git clone'd this repo?

# Making .bashrc work
echo "source ~/.bashrc" > ~/.bash_profile
cp ~/.dotfiles/.inputrc ~/.inputrc
cp ~/.dotfiles/.profile ~/.profile

# git settings
git config --global alias.branches 'branch --list'

#
# OSX defaults
#
defaults write com.apple.TextEdit CorrectSpellingAutomatically '0'
defaults write com.apple.finder AppleShowAllFiles yes
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

defaults write com.apple.finder EmptyTrashSecurely '1'
defaults write com.apple.Terminal. FocusFollowsMouse -string YES
# Expand save panel by default , https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L61-L62
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
# Disable ânaturalâ (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# Disable autocomplete when hit escape:
defaults write -g NSUseSpellCheckerForCompletions -bool false

#
# Chrome settings
#
defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Screenshot things!
defaults write com.apple.screencapture disable-shadow -bool true
#mkdir ~/Screenshots
#defaults write com.apple.screencapture location ~/Screenshots

# https://medium.com/@jonathan.leitschuh/zoom-zero-day-4-million-webcams-maybe-an-rce-just-get-them-to-visit-your-website-ac75c83f4ef5
defaults write ~/Library/Preferences/us.zoom.config.plist ZDisableVideo 1

# Things you will also want to do:
# - set Terminal to use Option as a meta key, so that it sends alt keycodes
# - set up a terminal theme that looks good
# - download and install http://font.ubuntu.com/ for terminal fonts
# - set custom shortcuts in  
#   - Chrome: F12 for Developer Tools
# - the automator workflow: run applescript saying whatever it is, bind that to command-f2

# http://blog.shiz.me/post/67305143330/8192-bit-rsa-keys-in-os-x
# OSX doesn't by default like RSA keys longer than 4096 bits
sudo defaults write /Library/Preferences/com.apple.crypto RSAMaxKeySize -int 8192
sudo defaults write /Library/Preferences/com.apple.security RSAMaxKeySize -int 8192

# Restart Finder with these new settings
killall Finder

# To reverse this,
# defaults write com.apple.finder AppleShowAllFiles FALSE
# killall Finder
