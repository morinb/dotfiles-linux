#!/usr/bin/env bash

set -euo pipefail

DRY_RUN=false

if [[ "${1:-}" == "--dry-run" ]]; then
    DRY_RUN=true
fi

DOTFILES_DIR="${HOME}/.dotfiles"

source "${DOTFILES_DIR}/scripts/utils.sh"
source "${DOTFILES_DIR}/scripts/packages.sh"
source "${DOTFILES_DIR}/scripts/stow.sh"
source "${DOTFILES_DIR}/scripts/shell.sh"

main() {
    print_header "Debian Dotfiles Setup"

    ensure_not_root
    detect_os

    install_apt_packages

    install_oh_my_zsh
    install_fzf
    install_zoxide

    create_directories

    stow_packages

    set_default_shell

    print_success "Environment ready 🚀"
}

main "$@"