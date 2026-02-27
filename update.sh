#!/bin/bash

echo "Current user: $USER"
echo "Home directory: $HOME"
echo "Date: $(date)"
echo "Updating system packages..."

sudo apt update && sudo apt upgrade -y

rustup update
echo "rustc and cargo versions:"
rustc --version
cargo --version

cowsay "System update complete!"
