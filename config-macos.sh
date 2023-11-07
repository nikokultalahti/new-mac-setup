#!/bin/sh

# OS Settings
defaults write com.apple.TextEdit RichText -int 0 # Start TextEdit in plain text mode

defaults write com.apple.finder ShowRecentTags -bool false # Hide recent tags

defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false # Disable autocorrect smart-quotes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false  # Disable autocorrect smart-dashes

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true # Prevent Photos from opening when iPhone is connected

defaults write com.apple.dock "show-recents" -int 0 # Hide recent applications from dock (applied after reboot or killall dock)

sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on # Turn on firewall

# Mail
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true # View attachments as icons

# Safari
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false  # Disable auto-opening of downloads
defaults write com.apple.Safari CanPromptForPushNotifications -bool false # Prevent websites from asking for push notifications
defaults write com.apple.Safari NewTabBehavior -int 1 # New tabs open in empty page
defaults write com.apple.Safari ShowOverlayStatusBar -bool true # Always show status bar in bottom left corner

