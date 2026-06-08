#!/bin/bash

echo "Current user: $USER"
echo "Home directory: $HOME"
echo "Date: $(date)"
echo "Updating system packages..."

sudo apt update && sudo apt upgrade -y

cowsay "System update complete!"
