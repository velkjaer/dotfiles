# Dotfiles

Opinionated setup for my personal development environment, designed for macOS and Linux.

## Features

- **Homebrew**: Package manager for macOS and Linux
- **Fish Shell**: Friendly interactive shell with custom plugins and functions
- **Starship**: Cross-shell prompt for a beautiful, fast, and customizable prompt
- **Neovim**: Modern, extensible text editor
- **Custom Functions & Aliases**: Productivity-boosting scripts and shortcuts
- **Git & GitHub CLI**: Enhanced workflows and aliases
- **Fisher**: Plugin manager for Fish shell
- **fzf**: Fuzzy finder integration for command history, files, and git

## Installation

1. Clone this repository:

   ```sh
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the setup script:

   ```sh
   ./setup.sh
   ```

3. (Optional) Review and symlink configs as needed.

## Directory Structure

- `config/` — Fish shell configuration, plugins, completions, and functions
- `dots/` — Miscellaneous dotfiles (e.g., `.gitconfig`, `.vimrc`)
- `git/` — Git-related scripts and setup
- `starship/` — Starship prompt configuration
- `Brewfile` — Homebrew packages to install
- `setup.sh` — Bootstrap script for initial setup

## Customization

- Edit `config/fish/config.fish` for shell customizations.
- Add or remove plugins in `config/fish/fish_plugins`.
- Update `Brewfile` to manage packages.

## Updating

To update plugins and packages:

```sh
brew bundle
fisher update
```

## Credits

- Inspired by [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) and others.
