#!/bin/sh

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install essential packages
sudo pacman -S hyprland hypridle hyprlock swww swaync kitty waybar xdg-desktop-portal-hyprland xdg-user-dirs ufw nano grim slurp ttf-dejavu ttf-dejavu-nerd --noconfirm
sleep 0.5

# Install some other stuff
sudo pacman -S starship fastfetch imagemagick opus opusfile mesa vulkan-radeon polkit-kde-agent gammastep --noconfirm
sleep 0.5

# Install apps
sudo pacman -S firefox nautilus gnome-system-monitor gnome-disk-utility gnome-text-editor loupe sushi --noconfirm
sleep 0.5

# Create folders
xdg-user-dirs-update

clear
sleep 0.5
echo "receba"
echo "AGORA ATIVE UFW"
