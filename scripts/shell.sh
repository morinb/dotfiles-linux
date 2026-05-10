#!/usr/bin/env bash

install_oh_my_zsh() {
    ZSH_DIR="$HOME/.oh-my-zsh"
    if [[ ! -d "$ZSH_DIR" ]]; then
        run_cmd 'RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
    fi

    ZSH_CUSTOM="$ZSH_DIR/custom"
    
    # Plugins
    run_cmd 'git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions" 2>/dev/null || true'
    run_cmd 'git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" 2>/dev/null || true'

    # Theme
    run_cmd 'git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k" 2>/dev/null || true'

}

install_sdkman() {
    run_cmd 'curl -s "https://get.sdkman.io" | bash'
}

install_fzf() {
    if [[ ! -d "$HOME/.fzf" ]]; then
        run_cmd "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
        run_cmd "~/.fzf/install --all"
    fi
}

create_directories() {
    run_cmd "mkdir -p \
        ~/code \
        ~/personal \
        ~/work \
        ~/.config"
}



set_default_shell() {
    run_cmd "chsh -s $(which zsh)"
}
