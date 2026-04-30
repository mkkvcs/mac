sudo scutil --set ComputerName 4324532
sudo scutil --set LocalHostName 4324532

defaults write NSGlobalDomain AppleShowAllExtensions -bool true
chflags nohidden ~/Library
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.coteditor.CotEditor;}'


defaults write com.apple.dock autohide -float 1
defaults write com.apple.dock autohide-time-modifier -float 0.50
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock mru-spaces -bool false
killall Dock


defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXPreferredViewStyle -string "icnv"
killall Finder

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
defaults write -g ApplePressAndHoldEnabled -bool false;

defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

Keyboard shortcuts
