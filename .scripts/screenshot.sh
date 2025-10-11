#!/bin/bash
# will take a screenshot either of the whole screen or a selected area
# adding any argument will cause the setting to be area selection

output=$(date +%H-%M-%S-%d-%m-%Y).png
touch "${HOME}/Pictures/screenshots/${output}"

if [[ -z "${1}" ]]; then
	grim "${HOME}/Pictures/screenshots/${output}" || exit 0
else
	slurp | grim -g - "${HOME}/Pictures/screenshots/${output}" || exit 0
fi
