#!/bin/sh

# Install Command Line tools without Xcode
code-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Homebrew not automatically on PATH for Apple Silicon
    if [[ $(arch) == "arm64" ]] && ! command -v brew; then
        eval $("/opt/homebrew/bin/brew" shellenv)
    fi

# Install CLI tools

brew install git                        # Git 
brew install nvm                        # Node version manager
brew install mas                        # For App Store Automation
brew install 1password-cli              # Command-line tools for 1Password
brew install zsh-syntax-highlighting    # Syntax highlightning for zsh
brew install zsh-autosuggestions        # Autosuggestions for zsh

# Install App Store apps

mas install 409201541                   # Pages
mas install 409203825                   # Numbers
mas install 409183694                   # Keynote
mas install 409203825                   # Subtrack
mas install 1659154653                  # Mona for Mastodon
mas install 1289583905                  # Pixelmator Pro
mas install 775737590                   # iA Writer
mas install 1529448980                  # Reeder 5
mas install 1006087419                  # SnippetsLab
mas install 747648890                   # Telegram
mas install 1440147259                  # Adguard
mas install 1475387142                  # Tailscale
mas install

# Install Safari Extensions

mas install 6443941139                  # 2FAS Authentication Extension
mas install 1606897889                  # Consent-O-Matic
mas install 1494051017                  # SimpleLogin
mas install 1569813296                  # 1Password for Safari

# Install Non-App Store Apps

brew install --cask signal              # Signal
brew install --cask vscodium            # VS Code without telemetry
brew install --cask calibre             # Calibre
brew install --cask raycast             # Raycast
brew install --cask mullvadwpn          # Mullvad VPN
brew install --cask iterm2              # iTerm2
brew install --cask iina                # IINA
brew install --cask 1password           # 1Password