#!/bin/bash

echo "Current user: $USER"
echo "Home directory: $HOME"
echo "Date: $(date)"
echo "Updating system packages..."

sudo apt update && sudo apt upgrade -y

pi update && pi update --extensions

sudo apt autoremove -y && sudo apt autoclean && sudo apt clean

cowsay "System update complete!"
