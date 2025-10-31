#!/bin/sh

# Generate color scheme
wal -i ~/.theme/current/paper.jpg -ntq

# set wallpaper
sh ~/.scripts/theme/apply-wallpaper.sh

# set dunst theme
cp ~/.cache/wal/dunst.colors ~/.config/dunst/dunstrc.d/99-colors.conf
dunstctl reload

# set tofi theme
cp ~/.cache/wal/tofi.colors ~/.config/tofi/colors

# set zsh colors
cp ~/.cache/wal/sequences ~/.theme/current/colors/sequences

# notify of theme change
notify-send "Theme changed. Some changes may require reloading to take effect."
