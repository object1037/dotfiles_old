#!/bin/bash

# Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ln -nsf "$(pwd)/Brewfile" "$HOME/Brewfile"

brew bundle

fish ./deploy.fish