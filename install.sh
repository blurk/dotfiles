#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt update
xargs -a manual-packages.txt sudo apt install -y

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep fd-find tree-sitter-cli unzip git xclip neovim

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

curl -s https://ohmyposh.dev/install.sh | bash -s

exec zsh

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

cp default-packages $NVM_DIR

stow .
