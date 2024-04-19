#!/bin/sh

# OS SETTINGS

# Start TextEdit in plain text mode
defaults write com.apple.TextEdit RichText -int 0 

# Disable autocorrect smart-quotes and smart-dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false 
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Prevent Photos from opening when iPhone is connected
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true 

# Hide recent applications from dock (applied after reboot or killall dock)
defaults write com.apple.dock "show-recents" -int 0 

# Ask for password as soon as screensaver starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0 

# Turn on firevall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

# Don't default to saving documents to iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool true

# Disable crash reporter
defaults write com.apple.CrashReporter DialogType None

# FINDER

# Show path bar
defaults write com.apple.Finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.Finder ShowStatusBar -bool true

# Expose hidden files and Library folder in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true
chflags nohidden ~/Library

# Show external hard drives on desktop
defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool true

# Show removable media on desktop
defaults write com.apple.Finder ShowRemovableMediaOnDesktop -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Hide recent tags
defaults write com.apple.finder ShowRecentTags -bool false



# MAIL

# View attachments as icons
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true 

# SAFARI

# Disable auto-opening of downloads
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false  

# New tabs open in empty page
defaults write com.apple.Safari NewTabBehavior -int 1 

# Always show status bar in bottom left corner
defaults write com.apple.Safari ShowOverlayStatusBar -bool true 

# Show bookmarks bar
defaults write com.apple.Safari ShowFavoritesBar -bool true


