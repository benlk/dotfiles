#!/bin/bash
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder

# To reverse this,
# defaults write com.apple.finder AppleShowAllFiles FALSE
# killall Finder
