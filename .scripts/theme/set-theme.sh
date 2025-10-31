#!/bin/sh

DIRECTORY=~/.theme/themes/
CURRENT_THEME=~/.theme/current/
APPLY_SCRIPT=~/.scripts/theme/apply-theme.sh

if command -v nsxiv > /dev/null; then
	SELECTION=$(nsxiv -obt "$DIRECTORY"*/paper.jpg | tail -n 1)

fi

THEME=$(dirname "$SELECTION")

cp "$THEME"/* "$CURRENT_THEME"
sh "$APPLY_SCRIPT" 
