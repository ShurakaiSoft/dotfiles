#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we're using the latest Homebrew.
brew update


# Upgrade any already-installed formulae.
brew Upgrade


# Install GNU core utilities (those that come with MacOS are outdated).
# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`
# And `$(brew --prefix coreutils)/libexec/gnuman` to `$MANPATH`
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, (`g`-refixed).
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names


# Install more recent versions of some MacOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen


# Install other useful binaries.
brew install git
brew install git-lfs


# Remove outdated versions from the cellar.
brew cleanup
