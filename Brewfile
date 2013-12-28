# ==============================================================================
# Brewfile - one file to install them all
#
# Find more Homebrew packages at http://braumeister.org/
# ==============================================================================

# Make sure we’re using the latest Homebrew
update

# ==============================================================================
# Add additional taps
#
# This will throw error if already tapped.
#
# Alternative is to use `brew install user/tap/formula`
# Ref. https://github.com/Homebrew/homebrew/pull/25203#issuecomment-30569290
# ==============================================================================

tap homebrew/dupes
tap phinze/cask
tap josegonzalez/php

# ==============================================================================
# Install binary packages (i.e. standard apps)
#
# Run `qlmanage -r` after installing QuickLook plugins.
# ==============================================================================

install brew-cask
cask install firefox
cask install gitx-rowanj
cask install google-chrome
cask install imagealpha
cask install imageoptim
cask install moom
cask install movist-fork
cask install opera
cask install sublime-text
cask install the-unarchiver
cask install transmission
# cask install virtualbox
# cask install logitech-control-center
cask install flash
cask install qlcolorcode
cask install qlstephen
cask install qlmarkdown
cask install betterzipql
cask install suspicious-package
cask install colorpicker-hex

# ==============================================================================
# Install standard packages
# ==============================================================================

install git
install node
install libicns
install icoutils
install kdiff3

# MAMP packages and dependancies
# ------------------------------------------------------------------------------

install php55
install php55-xdebug
install php55-memcache
install memcached
install composer

# Remove outdated versions from the cellar
cleanup
