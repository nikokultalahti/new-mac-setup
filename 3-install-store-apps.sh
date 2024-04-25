#!/usr/bin/env

###############################################################################
# Install applications for Apple Store                                        #
###############################################################################

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Starting to install applications... This may take a while."

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

echo "Done. Note that some of these changes require a logout/restart of your OS to take effect.  At a minimum, be sure to restart your Terminal."
