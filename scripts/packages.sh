#!/usr/bin/env bash

install_apt_packages() {
    run_cmd "sudo apt update"

    run_cmd "sudo apt install -y \
        git \
        curl \
        wget \
        zsh \
        tmux \
        unzip \
        zip \
        build-essential \
        stow \
        ripgrep \
        fd-find \
        batcat \
        eza \
        neovim \
        fzf \
        tree \
        btop \
        jq \
        gcc \
        g++ \
        make \
        python3 \
        python3-pip"
}
