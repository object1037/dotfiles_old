#!/bin/bash

has() {
  type "$1" > /dev/null 2>&1
}

# Homebrew
if has "brew"; then
  echo "Homebrew already installed."
else 
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if has "fish"; then
  echo "fish already installed."
else
  echo "Installing fish..."
  brew install fish
fi

fish ./deploy.fish