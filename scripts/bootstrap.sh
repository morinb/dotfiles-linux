#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/morinb/dotfiles-linux.git"
DOTFILES_DIR="$HOME/.dotfiles"

if [[ ! -d "$DOTFILES_DIR" ]]; then
    git clone "$REPO_URL" "$DOTFILES_DIR"
fi

cd "$DOTFILES_DIR"

chmod +x install.sh
./install.sh