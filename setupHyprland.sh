#!/bin/bash

if [[ `whoami` != 'root' ]]
  then echo "Please run as root, sudo bash setupHyprland.sh"
  exit
fi

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install essential packages
sudo pacman -S hyprland hypridle hyprlock kitty waybar swaync xdg-desktop-portal-hyprland xdg-user-dirs ufw fwupd nano grim slurp swww ttf-dejavu ttf-dejavu-nerd cantarell-fonts --noconfirm
sleep 0.5

# Install some other stuff
sudo pacman -S imagemagick hyprpolkitagent hyprsunset opus opusfile mesa vulkan-radeon greetd fuzzel starship fastfetch --noconfirm
sleep 0.5

# Install apps
sudo pacman -S firefox swayimg gvfs-mtp btop thunar thunar-volman tumbler --noconfirm
sleep 0.5

# Create default folders
xdg-user-dirs-update

clear
sleep 0.5
echo "receba"
echo "ATIVAR ufw E greetd, substitua o comando default no arquivo /etc/greetd/config.toml"
