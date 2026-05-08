#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/morinb/dotfiles-linux.git"
DOTFILES_DIR="${HOME}/.dotfiles-test"

echo "================================="
echo "DOTFILES DRY RUN BOOTSTRAP"
echo "================================="
echo

if [[ ! -d "$DOTFILES_DIR" ]]; then
    echo "[INFO] Cloning repository..."
    git clone "$REPO_URL" "$DOTFILES_DIR"
else
    echo "[INFO] Repository already exists"
fi

cd "$DOTFILES_DIR"

echo
echo "[INFO] Running install.sh in dry-run mode"
echo

chmod +x install.sh
chmod +x scripts/*.sh

./install.sh --dry-run