# TODO: read grzybek and the other references
# TODO: collect more settings over time 
# TODO: reset all settings and try using the script



# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking ? (1 or 0)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture 0

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad


# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 36

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool true

# System Preferences > Dock > Size (magnified):
defaults write com.apple.dock largesize -int 54

# System Preferences > Dock > Minimize windows using: Scale effect
defaults write com.apple.dock mineffect -string "scale"

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool true

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true



# Control center composition 
defaults write com.apple.controlcenter "NSStatusItem Visible AccessibilityShortcuts" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Battery" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible BentoBox" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Clock" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible DoNotDisturb" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Item-0" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-1" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-2" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-3" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-4" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-5" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-6" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible Item-7" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible NowPlaying" -bool true
defaults write com.apple.controlcenter "NSStatusItem Visible Sound" -bool false
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool true


# Disable global shortcuts for Spotlight and global file search
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 “{enabled = 0; value = { parameters = (32, 49, 1048576); type = ‘standard’; }; }”
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 65 “{enabled = 0; value = { parameters = (32, 49, 1572864); type = ‘standard’; }; }”

