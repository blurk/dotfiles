# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system


```
git, stow
```

## Installation

1. check out the dotfiles repo in your $HOME directory using git

```
git clone https://github.com/blurk/dotfiles.git
cd dotfiles
```

2. Install needed packages
```
sudo apt update
xargs -a manual-packages.txt sudo apt install -y
```
- [nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
- [Oh My Posh](https://ohmyposh.dev/docs/installation/linux)
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)

```
cp default-packages $NVM_DIR
```

3. use GNU stow to create symlinks

```
stow .
```
