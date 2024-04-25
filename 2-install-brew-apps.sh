#!/usr/bin/env

###############################################################################
# Install Hombrew, CLI tools, Hombrew Casks and development tools             #
###############################################################################

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Starting to install applications... This may take a while."

###############################################################################
# Install Homebrew                                                              #
###############################################################################

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

###############################################################################
# Install CLI rools                                                           #
###############################################################################

brew install git                        # Git 
brew install mas                        # App Store Automation
brew install 1password-cli              # Command-line tools for 1Password
brew install zsh-syntax-highlighting    # Syntax highlightning for zsh
brew install zsh-autosuggestions        # Autosuggestions for zsh
brew install powerlevel10k              # Theme for ZSH

###############################################################################
# Install Homebrew Casks                                                      #
###############################################################################

brew install --cask signal              # Signal
brew install --cask visual-studio-code  # VS Code
brew install --cask calibre             # Calibre
brew install --cask raycast             # Raycast
brew install --cask mullvadvpn          # Mullvad VPN
brew install --cask iterm2              # iTerm2
brew install --cask 1password           # 1Password
brew install --cask cleanshot           # CleanShotX
brew install --cask arq                 # Arq Backup7
brew install --cask netnewswire         # NetNewsWire
brew install --cask appcleaner          # AppCleaner
brew install --cask pycharm-ce          # Pycharm
brew install --cask rapidapi		        # Rapid Api

###############################################################################
# Install development tools                                                   #
###############################################################################

brew install python3                    # Python
brew install nvm                        # Node version manager

# Remove outdated versions from the Homebrew cellar.
brew cleanup

echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
