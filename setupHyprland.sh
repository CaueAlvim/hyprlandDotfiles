#!/bin/bash

if [[ `whoami` != 'root' ]]
  then echo "Please run as root, sudo bash setupHyprland.sh"
  exit
fi

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install essential packages
sudo pacman -S hyprland hypridle hyprlock swww swaync kitty waybar xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd nano grim slurp ttf-dejavu ttf-dejavu-nerd --noconfirm
sleep 0.5

# Install some other stuff
sudo pacman -S fuzzel starship fastfetch imagemagick opus opusfile mesa vulkan-radeon hyprpolkitagent hyprsunset --noconfirm
sleep 0.5

# Install apps
sudo pacman -S firefox nautilus gnome-system-monitor gnome-disk-utility gnome-text-editor swayimg sushi --noconfirm
sleep 0.5

# Create default folders
xdg-user-dirs-update

clear
sleep 0.5
echo "receba"
echo "AGORA ATIVE UFW"
