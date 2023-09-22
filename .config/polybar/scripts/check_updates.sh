#!/bin/bash

# Check for AUR updates with 'yay' for Arch Linux
aur_updates=$(yay -Qu)

# Check for Pacman updates
pacman_updates=$(checkupdates)

if [ -n "$aur_updates" ] && [ -n "$pacman_updates" ]; then
    notify-send "AUR and Pacman updates available"
elif [ -n "$aur_updates" ]; then
    notify-send "AUR updates available"
elif [ -n "$pacman_updates" ]; then
    notify-send "Pacman updates available"
else
    notify-send "No updates available"
fi



