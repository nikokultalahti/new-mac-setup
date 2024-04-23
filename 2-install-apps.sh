#!/usr/bin/env

# Install Homebrew, command-line tools, applications and development tools.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Starting to install applications... This may take a while."

###############################################################################
# Homebrew                                                              #
###############################################################################

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Add Homebrew to PATH
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zshrc

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

###############################################################################
# CLI Tools                                                                   #
###############################################################################

brew install git                        # Git 
brew install mas                        # App Store Automation
brew install 1password-cli              # Command-line tools for 1Password
brew install zsh-syntax-highlighting    # Syntax highlightning for zsh
brew install zsh-autosuggestions        # Autosuggestions for zsh
brew install powerlevel10k              # Theme for ZSH

###############################################################################
# App Store Applications                                                      #
###############################################################################

mas install 409201541                   # Pages
mas install 409203825                   # Numbers
mas install 409183694                   # Keynote
mas install 1519946553                  # Subtrack
mas install 1659154653                  # Mona for Mastodon
mas install 1289583905                  # Pixelmator Pro
mas install 775737590                   # iA Writer
mas install 1006087419                  # SnippetsLab
mas install 747648890                   # Telegram
mas install 1440147259                  # Adguard
mas install 1496543317                  # Book Tracker
mas install 1471867429                  # OTP Auth
mas install 1474335294                  # GoodLinks

###############################################################################
# Safari Extensions                                                           #
###############################################################################

mas install 1606897889                  # Consent-O-Matic
mas install 1494051017                  # SimpleLogin
mas install 1569813296                  # 1Password for Safari
mas install 1514703160                  # Focus for Youtube

###############################################################################
# Homebrew Casks                                                              #
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
# Development Tools                                                           #
###############################################################################

# Install Python
brew install python3                    # Python
brew install nvm                        # Node version manager

# Remove outdated versions from the Homebrew cellar.
brew cleanup

echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
