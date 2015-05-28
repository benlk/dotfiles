#!/bin/bash

# This assumes that you have already installed git and xcode. How else would you have git clone'd this repo?

# Making .bashrc work
echo "source ~/.bashrc" > ~/.bash_profile

# OSX defaults
defaults write com.apple.TextEdit CorrectSpellingAutomatically '0'
defaults write com.apple.finder AppleShowAllFiles yes
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write com.apple.finder EmptyTrashSecurely '1'
defaults write com.apple.Terminal. FocusFollowsMouse -string YES

defaults write com.google.Chrome.plist AppleEnableSwipeNavigateWithScrolls -bool FALSE

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

killall Finder

# To reverse this,
# defaults write com.apple.finder AppleShowAllFiles FALSE
# killall Finder
