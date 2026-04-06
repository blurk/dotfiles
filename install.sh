#!/bin/bash
set -euo pipefail

# Helper: install only if missing
install_if_missing() {
    if ! command -v "$1" &>/dev/null; then
        echo "Installing $1..."
        shift
        sudo apt install -y "$@"
    else
        echo "$1 already installed, skipping."
    fi
}

# Update system once
sudo apt update
sudo apt upgrade -y

# Install packages from manual list if file exists
if [[ -f manual-packages.txt ]]; then
    xargs -a manual-packages.txt sudo apt install -y
fi

# Add Neovim PPA if not already added
if ! grep -q "neovim-ppa/unstable" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository ppa:neovim-ppa/unstable -y
    sudo apt update
fi

# Core packages
sudo apt install -y build-essential ripgrep fd-find tree-sitter-cli unzip git xclip stow

# Neovim
install_if_missing nvim neovim

# NVM
if ! command -v nvm &>/dev/null; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
    # Assuming you installed nvm in the default location (~/.nvm)
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

    cp default-packages "$NVM_DIR/default-packages"
    # Now you can run nvm commands immediately
    nvm install --lts
fi

# Oh My Posh
if ! command -v oh-my-posh &>/dev/null; then
    curl -s https://ohmyposh.dev/install.sh | bash -s
fi

# FZF
if [[ ! -d ~/.fzf ]]; then
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all
fi

mv ~/.zshrc ~/.zshrc.backup
# Apply dotfiles with stow
stow .

git config --global user.name "blurk"
git config --global user.email "nsinh6745@gmail.com"

# Switch to zsh at the end
chsh -s $(which zsh)
exec zsh
