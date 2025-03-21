#!/bin/bash

# Detect if running on Windows Git Bash
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "Detected Windows. Running commands without sudo."
    apt install awscli -y  # Remove sudo
else
    echo "Running on Linux/macOS. Using sudo."
    sudo apt update -y
    sudo apt install awscli -y
fi
