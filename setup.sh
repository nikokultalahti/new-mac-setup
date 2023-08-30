# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install System Apps

brew install mas                        # For App Store Automation
brew install git                        # Git 
brew install bitwarden-cli              # Command-line tools for Bitwarden (for Raycast integration)
brew install ssh-copy-id                # Add a public key to a remote machine's authorized_keys file

# Install App Store apps

mas install 1352778147                  # Bitwarden
mas install 409201541                   # Pages
mas install 409203825                   # Numbers
mas install 409203825                   # Subtrack
mas install 1659154653                  # Mona for Mastodon
mas install 1289583905                  # Pixelmator Pro
mas install 775737590                   # iA Writer
mas install 1474335294                  # Goodlinks
mas install 747648890                   # Telegram
mas install 1440147259                  # Adguard
mas install 1475387142                  # Tailscale

# Install Safari Extensions

mas install 6443941139                  # 2FAS Authentication Extension
mas install 1606897889                  # Consent-O-Matic
mas install 1494051017                  # SimpleLogin


# Install Non-App Store Apps
# List of all available Casks on Homebrew website: https://formulae.brew.sh/cask/

brew install --cask netnewswire         # NetNewsWire
brew install --cask signal              # Signal
brew install --cask vscodium            # VS Code without telemetry
brew install --cask calibre             # Calibre
brew install --cask raycast             # Raycast
brew install --cask sony-ps-remote-play # PS Remote Play
brew install --cask vnc-viewer          # VNC Viewer
brew install --cask mullvadwpn          # Mullvad VPN
brew install --cask applite             # GUI for Homebrew

# Other Apps
