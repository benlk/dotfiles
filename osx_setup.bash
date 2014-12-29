#!/bin/bash


# OSX defaults
defaults write com.apple.TextEdit CorrectSpellingAutomatically '0'
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write com.apple.finder EmptyTrashSecurely '1'
killall Finder

# To reverse this,
# defaults write com.apple.finder AppleShowAllFiles FALSE
# killall Finder
