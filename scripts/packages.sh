#!/usr/bin/env bash

install_apt_packages() {
    run_cmd "curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/debian.griffo.io.gpg"
    run_cmd 'echo "deb https://debian.griffo.io/apt $(lsb_release -sc 2>/dev/null) main" | sudo tee /etc/apt/sources.list.d/debian.griffo.io.list"'


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
        bat \
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

install_ghostty() {
    if ! command -v ghostty &>/dev/null; then
        echo "Installing Ghostty..."

        run_cmd "sudo apt install -y \
            libgtk-4-dev \
            libadwaita-1-dev \
            git \
            zig"

        run_cmd "git clone https://github.com/ghostty-org/ghostty.git /tmp/ghostty"

        run_cmd "cd /tmp/ghostty && zig build -Doptimize=ReleaseFast"

        run_cmd "cd /tmp/ghostty && sudo zig build install"

        print_success "Ghostty installed"
    fi
}