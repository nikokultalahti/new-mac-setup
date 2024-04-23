#!/usr/bin/env

# Configure applications and tools

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Configure applications and tools                                            #
###############################################################################

# Homebrew
brew analytics off

# Git
git config --global user.name "Niko Kultalahti"
git config --global user.email "hello@nikokultalahti.com"
git config --global color.ui auto

# Install zsh-syntax highlightning and zsh-autosuggestions
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >> ${ZDOTDIR:-$HOME}/.zshrc
p10k configure