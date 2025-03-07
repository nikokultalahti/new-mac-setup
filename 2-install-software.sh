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
brew install starship                   # Command-line prompt
brew install atuin                      # Shell history
brew install chezmoi                    # Dotfile manager
brew install eza                        # Alternative to ls
brew install fd                         # Alternative to find
brew install tealdeer                   # TLDR
brew install zoxide                     # Replacement for cd
brew install wireguard-go               # Wireguard
brew install wireguard-tools            # Wireguard
brew install bitwarden-cli              # Bitwarden CLI
brew install zsh-syntax-highlighting    # Syntax highlightning for zsh
brew install zsh-autosuggestions        # Autosuggestions for zsh
brew-install --cask 1password-cli       # 1Password CLI


###############################################################################
# Install applications and fonts                                              #
###############################################################################

brew install --cask 1password
brew install --cask appcleaner
brew install --cask affinity-publisher@1    
brew install --cask bitwarden
brew install --cask canva
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask logseq
brew install --cask mullvad VPN
brew install --cask podman-desktop
brew install --cask raycast
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask font-inter
brew install --cask font-jetbrains-mono

###############################################################################
# Install development tools                                                   #
###############################################################################

brew install pyenv                      # Python version manager
brew install nvm                        # Node version manager
brew install docker
brew install docker-compose
brew install podman
brew install podman-compose
brew install --cask google-cloud-sdk

# Remove outdated versions from the Homebrew cellar.
brew cleanup

echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
