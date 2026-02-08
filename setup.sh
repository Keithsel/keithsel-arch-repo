#!/bin/bash
set -e

echo "Setting up Keithsel's Arch Repo..."

echo "Importing and trusting the GPG key..."
curl -fsSL https://keithsel.github.io/arch-repo/keithsel.gpg | sudo pacman-key --add -
sudo pacman-key --lsign-key 28E82396

echo "Adding the repository to /etc/pacman.conf..."
echo -e "\n[keithsel]\nSigLevel = Required DatabaseOptional\nServer = https://keithsel.github.io/arch-repo/x86_64" | sudo tee -a /etc/pacman.conf > /dev/null

echo "Updating the package database..."
sudo pacman -Syy

echo "Setup complete! You can now install packages from Keithsel's Arch Repo."