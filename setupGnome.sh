#!/bin/sh

# Update system
sudo pacman -Syu --noconfirm
sleep 0.5

# Install gnome packages
sudo pacman -S gdm gjs gnome-shell gnome-control-center gnome-settings-daemon gnome-console gnome-logs gst-plugins-good ttf-dejavu ufw fwupd nano libdecor mesa vulkan-radeon --noconfirm
sleep 0.5

# Install apps
sudo pacman -S firefox gvfs-mtp gnome-system-monitor gnome-disk-utility gnome-text-editor loupe sushi nvme-cli --noconfirm
sleep 0.5

# Create folders
xdg-user-dirs-update

clear
sleep 0.5
echo "receba"
echo "AGORA ATIVE UFW e GDM"
