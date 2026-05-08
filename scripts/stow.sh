#!/usr/bin/env bash

stow_packages() {
    run_cmd "cd ~/.dotfiles && stow home"
    run_cmd "cd ~/.dotfiles && stow config"

    print_success "Symlinks installed"
}