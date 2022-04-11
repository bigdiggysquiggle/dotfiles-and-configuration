#!/bin/bash

## this script assumes that you've got the symlinks
## .mainconf and .extraconf in your $HOME/.config/i3/ folder## pointed at the main i3config file and the i3extras file
## respectively

## disable lines from the main i3config
CMD_LINE=""
CONFIG="$HOME/.config/i3/config"
if [ -f "$CONFIG" ]; then
	rm "$CONFIG"
fi
cp "$HOME/.config/i3/.mainconf" "$CONFIG"
sed -i --follow-symlinks "s/set \$term*/set \$term $1/" "$HOME/.config/i3/config"
shift
for line in "${@}"; do
	echo "doing line $line"
	sed -i -e "$line s/./#&/" $CONFIG
done

## check for extra settings and concatonate them onto our
## config if needed
if [ -f "$HOME/.config/i3/.extraconf" ]; then
	cat "$CONFIG" "$HOME/.config/i3/.extraconf" > "$CONFIG"
fi
