sudo scutil --set HostName Mac
sudo scutil --set LocalHostName Mac
sudo scutil --set ComputerName Mac

chflags nohidden ~/Library

defaults write com.apple.assistant.support "Search Queries Data Sharing Status" -int 2
defaults write com.apple.assistant.support "Siri Data Sharing Opt-In Status" -int 2
defaults write com.apple.assistant.support "Assistant Enabled" -bool false
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false
defaults write com.apple.amp.mediasharingd home-sharing-enabled -int 0
defaults write com.apple.CrashReporter DialogType none
defaults write com.apple.dock autohide -float 1
defaults write com.apple.dock autohide-time-modifier -float 0.50
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -bool false
defaults write com.apple.WindowManager StandardHideWidgets -bool true
defaults write com.apple.WindowManager StageManagerHideWidgets -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

killall Finder
killall Dock

sudo cupsctl --no-share-printers
sudo systemsetup -setremotelogin off
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -stop
sudo AssetCacheManagerUtil deactivate
sudo launchctl disable system/com.apple.tftpd
sudo launchctl disable system/com.apple.nfsd
sudo launchctl disable system/org.apache.httpd
sudo launchctl disable system/com.apple.uucp
sudo launchctl disable system/com.openssh.sshd
sudo launchctl disable system/com.apple.screensharing
sudo launchctl disable system/com.apple.smbd
sudo launchctl disable system/com.apple.ODSAgent

launchctl print-disabled system
