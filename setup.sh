#!/usr/bin/env bash

# Check if Xcode Command Line Tools are installed
if ! xcode-select -p &>/dev/null; then
  echo "Xcode Command Line Tools not found. Installing..." 
  sudo xcode-select --install
fi

# Verify that oh-my-zsh is installed
if ! command -v zsh &>/dev/null; then 
  curl -fsSL "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh" | /bin/bash
fi

# Vesrify that Homebrew is installed
if ! command -v brew &>/dev/null; then
  sudo curl -fsSL "https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh" | /bin/bash
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle --file ./Brewfile

# Create a projects directories
mkdir -p "${HOME}"/Code/{Personal,Work}

# Prepare Fish shell configuration
fish "./scripts/fish.fish"

# Prepare and clone git repositories
bash "./scripts/gh-setup.sh"
bash "./scripts/clone.sh"

# Prepare dev environment
bash "./scripts/docker.sh"

# Symlink the Mackup config file to the home directory
if [[ ! -L "${HOME}/.mackup.cfg" ]]; then
  echo "Creating symlink for Mackup config file..."
  ln -s ./.mackup.cfg "${HOME}/.mackup.cfg"
fi

# Set macOS preferences - we will run this last because this will reload the shell
# TODO: Add macOS preferences
