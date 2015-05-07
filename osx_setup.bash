#!/bin/bash


# OSX defaults
defaults write com.apple.TextEdit CorrectSpellingAutomatically '0'
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write com.apple.finder EmptyTrashSecurely '1'

# http://blog.shiz.me/post/67305143330/8192-bit-rsa-keys-in-os-x
# OSX doesn't by default like RSA keys longer than 4096 bits
sudo defaults write /Library/Preferences/com.apple.crypto RSAMaxKeySize -int 8192
sudo defaults write /Library/Preferences/com.apple.security RSAMaxKeySize -int 8192

# Restart Finder with these new settings
killall Finder

# To reverse this,
# defaults write com.apple.finder AppleShowAllFiles FALSE
# killall Finder
