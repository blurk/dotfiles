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
xargs -a packages.txt sudo apt install -y
```

3. use GNU stow to create symlinks

```
stow .
```
